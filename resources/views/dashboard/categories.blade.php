@include('partials.head')
@include('partials.nav')

<div class="flex flex-col gap-y-12 w-full pt-12">
<!-- edit modal -->

<!-- add category -->
    <div class="m-auto w-3/4 text-md font-normal border border-gray border-opacity-20 p-12 rounded-xl shadow-xl bg-notwhite">
        <!-- Table 1: Service and Categories -->
        <table class="min-w-full border-collapse border border-gray-300">
                <thead>
                    <tr>
                        <th class="border border-gray px-6 py-4 text-center">Category Name</th>
                        <th class="border border-gray px-6 py-4 text-center">Subcategories</th>
                        <th class="border border-gray px-6 py-4 text-center">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($serv as $service)
                        @if($service->category->isNotEmpty())
                            @foreach($service->category as $category)
                                <tr>
                                    <td class="border border-gray px-6 py-4 text-center">
                                        {{ $service->name }}
                                    </td>
                                    <td class="border border-gray px-6 py-4 text-center">
                                        <p>{{ $category->name }}</p>
                                    </td>
                                    <td class="border border-gray px-6 py-4 text-center">
                                        <!-- Delete Category -->
                                        <form action="{{ route('category.delete', $category->id) }}" method="POST" style="display:inline;">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="px-2 py-1 bg-red-500 text-white rounded">Delete</button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        @endif
                    @endforeach
                </tbody>
            </table>

        <h1 class="text-4xl pb-4 font-semibold">Add Category</h1>
        <form class="w-full flex flex-wrap gap-x-2 gap-y-4" method="post" action="{{ route('store.category') }}">
            @csrf

            <input type="hidden" name="type" value="category">
            <div class="w-full lg:w-1/3 px-3 mb-6 lg:mb-0">
                <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="service_id">
                    Service
                </label>
                <select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline" id="service_id" name="service_id">
                    <option value="">Select a service</option>
                    @foreach($services as $service)
                        <option value="{{ $service->id }}">{{ $service->name }}</option>
                    @endforeach
                </select>
            </div>
            <div class="w-full lg:w-1/3 px-3 mb-6 lg:mb-0">
                <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="name">
                    New Category
                </label>
                <input class="appearance-none block w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 rounded shadow leading-tight focus:outline-none focus:shadow-outline" id="name" name="name" type="text" placeholder="Enter new category">
            </div>
            <div class="w-full lg:w-1/3 px-3 mb-6 lg:mb-0">
                <button class="bg-lightblue hover:bg-blue font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline" type="submit">
                    Add Category
                </button>
            </div>
        </form>
    </div>

<!-- add subcategory -->
    <div class="m-auto w-3/4 text-md font-normal border border-gray border-opacity-20 p-12 rounded-xl shadow-xl bg-notwhite">

            <!-- Table 2: Category and Subcategories -->
            <table class="min-w-full border-collapse border border-gray-300">
                <thead>
                    <tr>
                        <th class="border border-gray px-6 py-4 text-center">Category Name</th>
                        <th class="border border-gray px-6 py-4 text-center">Subcategories</th>
                        <th class="border border-gray px-6 py-4 text-center">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($categories as $category)
                        @if($category->subcategories->isNotEmpty())
                            @foreach($category->subcategories as $subcategory)
                                <tr>
                                    <td class="border border-gray px-6 py-4 text-center">
                                        {{ $category->name }}
                                    </td>
                                    <td class="border border-gray px-6 py-4 text-center">
                                        <p>{{ $subcategory->name }}</p>
                                    </td>
                                    <td class="border border-gray px-6 py-4 text-center">
                                        <!-- Delete Category -->
                                        <form action="{{ route('subcategory.delete', $subcategory->id) }}" method="POST" style="display:inline;">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="px-2 py-1 bg-red-500 text-white rounded">Delete</button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        @endif
                    @endforeach
                </tbody>
            </table>
    <h1 class="text-4xl pb-4 font-semibold">Add Sub-Category</h1>
        <form class="w-full flex flex-wrap gap-x-2 gap-y-4" method="post" action="{{ route('store.category') }}">
            @csrf

        <input type="hidden" name="type" value="subcategory">
            <div class="w-full lg:w-1/3 px-3 mb-6 lg:mb-0">
                <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="category_id">
                    Service
                </label>
                <select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline" id="category_id" name="category_id">
                    <option value="">Select a Category</option>
                    @foreach($categories as $cat)
                        <option value="{{ $cat->id }}">{{ $cat->name }}</option>
                    @endforeach
                </select>
            </div>
            <div class="w-full lg:w-1/3 px-3 mb-6 lg:mb-0">
                <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="name">
                    New Sub-Category
                </label>
                <input class="appearance-none block w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 rounded shadow leading-tight focus:outline-none focus:shadow-outline" id="name" name="name" type="text" placeholder="Enter new category">
            </div>
            <div class="w-full lg:w-1/3 px-3 mb-6 lg:mb-0">
                <button class="bg-lightblue hover:bg-blue font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline" type="submit">
                    Add Sub-Category
                </button>
            </div>
        </form>
    </div>

</div>
</body>