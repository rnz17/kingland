@include('partials.head')

@include('partials.nav')

    <div class="relative block mx-auto my-6 w-[88vw] h-[86vh] overflow-auto border-2 border-darkblue shadow-xl  mb-32">
        <table class="w-full text-sm text-left rtl:text-right">
            <thead class="text-xs uppercase bg-lightblue">
                <tr>
                    @foreach ($columns as $column)
                        <th scope="col" class="border border-black px-6 py-3 text-xs font-bold text-textblue uppercase tracking-wider text-center">
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