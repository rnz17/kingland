@include('partials.head')

@include('partials.nav')

@include('partials.dashopt')

<div class="bg-lightergray p-12">
    <!-- filters -->
        <div class="w-full pt-6 px-2">
            <form action="{{ route('dashboard') }}" method="GET">
                <div class="m-auto flex w-3/4 text-center overflow-y-auto">

                    <div class="w-2/6 m-auto ml-0 min-w-32">
                        <input type="text" name="search" placeholder="Search product name..." class="w-full p-1 max-h-12 border rounded-md">
                    </div>

                    <select name="category" class="border rounded-md p-2">
                        <option value="">NULL</option>
                        @foreach($filters as $filter)
                            <option value="{{ $filter->id }}">{{ $filter->name }}</option>
                        @endforeach
                    </select>

                    <div class="m-auto mr-0">
                        <button type="submit" class="p-1 m-auto min-w-32 text-md bg-lightblue text-black rounded-md">Apply Filters</button>
                    </div>
                </div>

            </form>
        </div>

    <!-- table -->
        <div class="relative block mx-auto my-6 w-full h-auto max-h-[80vh] overflow-auto border-2 border-darkblue shadow-xl">
            <table id="table" class="w-full text-sm text-left rtl:text-right text-gray">
                <thead class="relative sticky top-0 text-xs text-textblue uppercase bg-lightergray z-40">
                    <tr>
                        <th scope="col" class="sticky left-0 border border-black px-6 py-3 text-left text-xs font-medium uppercase tracking-wider text-center">
                        </th>
                    @foreach ($columns as $column)
                        <th scope="col" class="{{ $column === 'code' ? 'sticky left-14 bg-lightergray' : '' }} border border-black px-6 py-1 text-left text-xs font-medium uppercase tracking-wider text-center">
                            {{ $column }}
                        </th>
                    @endforeach
                    </tr>
                </thead>
                <tbody>
                    <tr class="bg-white border-b">
                        @foreach ($products as $product)
                            <tr>
                                <td class="sticky left-0 border bg-lightergray border-gray px-3 py-1 whitespace-nowrap text-sm font-medium text-gray-900 text-center">
                                    <a href="{{ url('dashboard/products/edit') . '?code=' . $product->code }}" class="bg-blue text-xs text-white rounded-lg py-1 px-2">
                                        Edit
                                    </a>
                                </td>
                                @foreach ($product->toArray() as $key => $value)
                                    <td class="{{ $key === 'code' ? 'sticky left-14 bg-lightergray' : 'bg-notwhite' }} border border-gray px-3 py-1 whitespace-nowrap text-sm font-medium text-gray-900 text-center">
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
                                        @elseif($key == 'spec')
                                            {!! $value !!}
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
        <div class="w-full flex flex-wrap mb-16">
            <button class="m-auto bg-lightblue rounded-xl px-4 py-1 font-semibold" onclick="exportTableToExcel('table', 'productList')">Download Excel</button>
            <a href="{{ route('products.create') }}" class="m-auto bg-green-200 rounded-xl px-4 py-1 font-semibold">Add Product</a>
        </div>

    <!-- PRICE CALCULATION -->
        <div class="w-full p-2 mb-16 rounded-lg border border-gray border-opacity-20 shadow-xl">
            <h1 class="ml-12 font-semibold text-2xl">Adjust price based on category</h1>

            @foreach($ascCat as $item)
                <div class="flex flex-nowrap w-full bg-notwhite rounded-lg pl-24 py-2 my-2">
                    <div class="m-auto w-1/3">
                        <h1 for="{{ $item->name }}" class="text-left text-lg font-medium text-gray-700">{{ $item->name }}: <span id="{{ $item->id }}" class="font-bold">{{ $product->where('category_id', $item->id)->first()?->unit_price ?? 'no products within category' }}</span></h1>
                    </div>
                    <div class="m-auto flex w-2/3">
                        <form method="POST" action="{{ route('update.price') }}" class="flex w-full">
                            @csrf
                            <input type="hidden" name="id" value="{{ $item->id }}">
                            <input 
                                type="range" 
                                id="{{ $item->name }}" 
                                min="1" 
                                max="100" 
                                value="{{ $product->where('category_id', $item->id)->first()?->unit_price ?? '' }}"
                                class="m-auto w-1/2 {{ $product->where('category_id', $item->id)->first() ? '' : 'opacity-50 cursor-not-allowed' }}"
                                name="value"
                                oninput="document.getElementById('{{ $item->id }}').textContent = this.value"
                                {{ $product->where('category_id', $item->id)->first() ? '' : 'disabled' }}
                            >
                            <button class="m-auto bg-green-300 text-white px-4 rounded-md {{ $product->where('category_id', $item->id)->first() ? '' : 'opacity-50 cursor-not-allowed' }}" {{ $product->where('category_id', $item->id)->first() ? '' : 'disabled' }}>Save</button>
                        </form>
                    </div>
                </div>
            @endforeach
        </div>
    <!-- logs -->
        <h1 class="ml-12 font-semibold text-2xl">Action Logs (Product related)</h1>
        <div class="relative block mx-auto my-6 w-[95%] h-[80vh] overflow-auto border-2 border-darkblue shadow-xl mb-32">
            <table id="table" class="w-full text-sm text-left rtl:text-right text-gray">
                <thead class="sticky top-0 text-xs text-notwhite uppercase bg-lightgray">
                    <tr>
                        <th scope="col" class="border border-black px-6 py-3 text-left text-xs font-medium uppercase tracking-wider text-center">
                            Product Code
                        </th>
                        <th scope="col" class="border border-black px-6 py-1 text-left text-xs font-medium uppercase tracking-wider text-center">
                            Action
                        </th>
                        <th scope="col" class="border border-black px-6 py-1 text-left text-xs font-medium uppercase tracking-wider text-center">
                            Old Value
                        </th>
                        <th scope="col" class="border border-black px-6 py-1 text-left text-xs font-medium uppercase tracking-wider text-center">
                            New Value
                        </th>
                        <th scope="col" class="border border-black px-6 py-1 text-left text-xs font-medium uppercase tracking-wider text-center">
                            Action By
                        </th>
                        <th scope="col" class="border border-black px-6 py-1 text-left text-xs font-medium uppercase tracking-wider text-center">
                            Time
                        </th>
    
                    </tr>
                </thead>
                <tbody>
                    @foreach ($logs as $log)
                        <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 text-center">
                            <td class="border border-black p-2 truncate">{{ $log->product_code }}</td>
                            <td class="border border-black p-2 truncate">{{ ucfirst($log->action) }}</td>
                            <td class="text-left border border-black p-2 px-6">
                                @if(!empty($log->old_values)) 
                                    @foreach($log->old_values as $key => $value)
                                        <p>{{ $key }}: {!! $value !!}</p>
                                    @endforeach
                                @endif
                            </td>
                            <td class="text-left border border-black p-2 px-6">
                                @if(!empty($log->new_values)) 
                                    @foreach($log->new_values as $key => $value)
                                        <p>{{ $key }}: {!! $value !!}</p>
                                    @endforeach
                                @endif
                            </td>
                            <td class="border border-black p-2 truncate">{{ $log->user->name ?? 'Unknown' }}</td>
                            <td class="border border-black p-2 truncate">{{ $log->created_at }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
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

    document.addEventListener('DOMContentLoaded', function() {
        // Scroll to saved position on page load
        const scrollPosition = localStorage.getItem('scrollPosition');
        if (scrollPosition) {
            window.scrollTo(0, scrollPosition);
            localStorage.removeItem('scrollPosition'); // Clear after scrolling
        }
    });

    // Save scroll position before the page unloads
    window.addEventListener('beforeunload', function() {
        localStorage.setItem('scrollPosition', window.scrollY);
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

