@include('partials.head')
@include('partials.nav')

@include('partials.dashopt')


<div class="w-full bg-lightergray flex flex-col p-6">

    <div class="m-auto flex flex-col w-3/4 min-w-[36rem] h-3/4 bg-notwhite rounded-lg p-4 border border-gray border-opacity-20 shadow-xl mt-6">
        <h1 class="text-3xl font-semibold ml-4 mb-5">Admission Requests</h1>
        <table class="w-full bg-white shadow-md rounded-lg mb-12">
            <thead class="bg-gray-200">
                <tr>
                    <th class="p-3 text-left">Supplier</th>
                    <th class="p-3 text-left">Product</th>
                    <th class="p-3 text-left">Price</th>
                </tr>
            </thead>
            <tbody>
                @foreach($prices as $price)
                <tr class="border-t">
                    <td class="p-3">{{ $price->supplier->name }}</td>
                    <td class="p-3">{{ $price->product->name }}</td>
                    <td class="p-3">{{ number_format($price->price, 2) }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>

        <h1 class="text-2xl font-bold mb-5">Add Suppliers</h1>

        @if(session('success'))
            <div class="bg-green-500 text-white p-3 rounded mb-4">
                {{ session('success') }}
            </div>
        @endif

        <form action="{{ route('suppliers.store') }}" method="POST" class="bg-white p-5 shadow-md rounded-lg mb-5">
            @csrf
            <label class="block text-gray-700">Supplier Name</label>
            <input type="text" name="name" class="w-full p-2 border rounded-lg mt-2">
            <button type="submit" class="bg-blue text-white px-4 py-2 rounded-lg mt-3">Add Supplier</button>
        </form>
    </div>

</div>