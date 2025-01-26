@include('partials.head')

@include('partials.nav')

    <!-- filters -->
    <div class="w-full px-4">
        <form action="{{ route('dashboard') }}" method="GET">
            <div class="block w-full pt-20 pl-8 text-center overflow-y-auto">

                <input type="text" name="search" placeholder="Search..." class="w-full p-2 border rounded-md">
    
                <!-- Categories -->
                <h1 href="{{ url('/sell') }}" class="font-[500] font-faustina text-lg text-left mt-4 ">Categories</h1>
    
                <div class="flex flex-wrap justify-center">
                    @foreach($filters as $filter)
                    <div class="flex text-left ml-2 w-[20%] items-center py-2 mt-1">
                        <input type="checkbox" id="{{ $filter->id }}" class="w-5 h-5 border rounded-md" name="category[]" value="{{ $filter->id }}">
                        <label for="{{ $filter->id }}" class="ml-2 text-sm font-medium px-2 py-1">{{ $filter->name }}</label>
                    </div>
                    @endforeach

                </div>
                
                <button type="submit" class="p-2 mt-6 text-md bg-lightblue text-black rounded-md">Apply Filters</button>
            </div>

        </form>
    </div>

    <!-- table -->
    <div class="relative block mx-auto my-6 w-[88vw] h-[86vh] overflow-auto border-2 border-darkblue shadow-xl">
        <table class="w-full text-sm text-left rtl:text-right text-gray-500">
            <thead class="text-xs text-gray-700 uppercase bg-lightgray">
                <tr>
                    <th scope="col" class="border border-black px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider text-center">
                    </th>
                @foreach ($columns as $column)
                    <th scope="col" class="border border-black px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider text-center">
                        {{ $column }}
                    </th>
                @endforeach
                </tr>
            </thead>
            <tbody>
                <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                    @foreach ($products as $product)
                        <tr>
                            <td class="border border-gray px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900 text-center">
                                <a href="{{ url('dashboard/editProd') . '?code=' . $product->code }}" class="bg-blue text-xs text-white rounded-lg py-1 px-2">
                                    Edit
                                </a>
                            </td>
                            @foreach ($product->toArray() as $key => $value)
                                <td class="border border-gray px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900 text-center">
                                    @if($key == 'service_id')
                                        {{ $services->where('id',$value)->first()->name }}
                                    @elseif($key == 'category_id')
                                        {{ $cat->where('id',$value)->first()->name }}
                                    @elseif($key == 'subcategory_id')
                                        {{ $subcat->where('id',$value)->first()->name }}
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




