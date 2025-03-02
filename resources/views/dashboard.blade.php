@include('partials.head')

@include('partials.nav')

    <!-- filters -->
    <div class="w-full pt-4 px-2">
        <form action="{{ route('dashboard') }}" method="GET">
            <div class="flex w-full text-center overflow-y-auto">

                <div class="w-1/6 m-auto ml-0 min-w-32">
                    <input type="text" name="search" placeholder="Search product name..." class="w-full p-1 max-h-12 border rounded-md">
                </div>
    
                <div class="flex flex-grid justify-center ">
                    @foreach($filters as $filter)
                    <div class="flex flex-wrap m-auto text-center items-center py-4 px-4">
                        <input type="checkbox" id="{{ $filter->id }}" class="m-auto border rounded-md" name="category[]" value="{{ $filter->id }}">
                        <label for="{{ $filter->id }}" class="pl-2 text-sm font-medium">{{ $filter->name }}</label>
                    </div>
                    @endforeach
                </div>
                
                <div class="m-auto mr-0">
                    <button type="submit" class="p-1 m-auto min-w-32 text-md bg-lightblue text-black rounded-md">Apply Filters</button>
                </div>
            </div>

        </form>
    </div>

    <!-- table -->
    <div class="relative block mx-auto my-6 w-[99%] h-[83vh] overflow-auto border-2 border-darkblue shadow-xl">
        <table id="table" class="w-full text-sm text-left rtl:text-right text-gray">
            <thead class="text-xs text-notwhite uppercase bg-lightgray">
                <tr>
                    <th scope="col" class="border border-black px-6 py-3 text-left text-xs font-medium uppercase tracking-wider text-center">
                    </th>
                @foreach ($columns as $column)
                    <th scope="col" class="border border-black px-6 py-1 text-left text-xs font-medium uppercase tracking-wider text-center">
                        {{ $column }}
                    </th>
                @endforeach
                </tr>
            </thead>
            <tbody>
                <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                    @foreach ($products as $product)
                        <tr>
                            <td class="border border-gray px-6 py-1 whitespace-nowrap text-sm font-medium text-gray-900 text-center">
                                <a href="{{ url('dashboard/products/edit') . '?code=' . $product->code }}" class="bg-blue text-xs text-white rounded-lg py-1 px-2">
                                    Edit
                                </a>
                            </td>
                            @foreach ($product->toArray() as $key => $value)
                                <td class="border border-gray px-6 py-1 whitespace-nowrap text-sm font-medium text-gray-900 text-center">
                                    @if($key == 'service_id')
                                        {{ $services->where('id',$value)->first()->name }}
                                    @elseif($key == 'category_id')
                                        {{ $cat->where('id', $value)->first()?->name }}
                                    @elseif($key == 'hidden')
                                    <input type="checkbox" 
                                        id="hidden_checkbox_{{ $product->code }}" 
                                        name="hidden_status_{{ $product->code }}" 
                                        class="hidden-checkbox rounded-sm" 
                                        data-product-code="{{ $product->code }}" 
                                        {{ $product->hidden ? 'checked' : '' }}>

                                    @elseif($key == 'subcategory_id')
                                        {{ $subcat->where('id', $value)->first()?->name }}
                                    @else
                                        {{ $value }}
                                    @endif
                                </td>
                            @endforeach
                        </tr>
                    @endforeach
                </tr>
            </tbody>
        </table>
    </div>
    <div class="w-full flex flex-col pb-32">
        <button class="m-auto bg-green-400 rounded-xl px-4 py-1" onclick="exportTableToExcel('table', 'productList')">Download Excel</button>
    </div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>

<!-- Add this inside your <head> tag or just before closing </body> tag -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
    $(document).ready(function() {
        $(".hidden-checkbox").on("change", function() {
            let productCode = $(this).data("product-code");
            let hiddenStatus = $(this).is(":checked") ? 1 : 0;

            $.ajax({
                url: "{{ route('update.hidden') }}",
                type: "POST",
                data: {
                    _token: "{{ csrf_token() }}",
                    code: productCode,
                    hidden: hiddenStatus
                },
                success: function(response) {
                    console.log(response.message);
                },
                error: function(xhr) {
                    console.error(xhr.responseText);
                }
            });
        });
    });
</script>

<script>
    function exportTableToExcel(tableID, filename = '') {
        alert('file will be saved as productList.xlsx');
        let table = document.getElementById(tableID);
        let wb = XLSX.utils.table_to_book(table, { sheet: "Sheet1" });
        XLSX.writeFile(wb, filename + ".xlsx");
    }
</script>

