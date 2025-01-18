@include('partials.head')

@include('partials.nav')

    
<div class="flex bg-gradient-to-b from-lightblue to-white py-24">
    <h1 class="text-right text-8xl font-black m-auto mr-4">Contact Us</h1>
    <div class="m-auto mx-4">
        <p class="text-left text-textblue text-3xl tracking-widest font-semibold m-auto">09171195578</p>
        <p class="text-left text-textblue text-3xl tracking-widest font-semibold m-auto">09171195578</p>
    </div>
    <p class="text-left text-textblue text-3xl tracking-widest font-semibold m-auto ml-4">email@gmail.com</p>
</div>

    <div class="relative block mx-auto my-6 w-[88vw] h-[86vh] overflow-auto border-2 border-darkblue shadow-xl">
        <table class="w-full text-sm text-left rtl:text-right text-gray-500">
            <thead class="text-xs text-gray-700 uppercase bg-lightgray">
                <tr>
                @foreach ($columns as $column)
                    <th scope="col" class="border border-black px-6 py-3 text-left text-xs font-medium text-white uppercase tracking-wider text-center">
                        {{ $column }}
                    </th>
                @endforeach
                </tr>
            </thead>
            <tbody>
                <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                    @foreach ($products as $product)
                        <tr>
                            @foreach ($product->toArray() as $key => $value)
                                <td class="border border-gray px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900 text-center text-wrap">
                                    {{ $value }}
                                </td>
                            @endforeach
                        </tr>
                    @endforeach
                </tr>
            </tbody>
        </table>
    </div>

@include('partials.footer')

</body>