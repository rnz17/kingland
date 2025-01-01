@include('partials.head')

<body>

    @include('partials.nav')

    <main class="flex p-2 h-[92vh] w-full mx-auto h-auto pb-32 shadow-xl">

        <!-- Filters -->
        <div class="w-1/6 pt-20 pl-8 text-center overflow-y-auto">

            <!-- Categories -->
            <h1 href="{{ url('/sell') }}" class="font-[500] font-faustina text-lg">Categories</h1>
            <div class="flex items-center ml-12 mt-1">
                <input type="checkbox" id="category1" class="w-5 h-5 border rounded-md">
                <label for="category1" class="ml-2 text-sm font-medium px-2 py-1">Category 1</label>
            </div>
            
            <div class="flex items-center ml-12">
                <input type="checkbox" id="category1" class="w-5 h-5 border rounded-md">
                <label for="category1" class="ml-2 text-sm font-medium px-2 py-1">Category 2</label>
            </div>

            
            <div class="flex items-center ml-12">
                <input type="checkbox" id="category1" class="w-5 h-5 border rounded-md">
                <label for="category1" class="ml-2 text-sm font-medium px-2 py-1">Category 3</label>
            </div>

            
            <div class="flex items-center ml-12">
                <input type="checkbox" id="category1" class="w-5 h-5 border rounded-md">
                <label for="category1" class="ml-2 text-sm font-medium px-2 py-1">Category 4</label>
            </div>
            
            <!-- Price Range -->
            <h1 href="{{ url('/sell') }}" class="font-[500] font-faustina text-lg mt-8">Price Range</h1>
            <div class="flex items-center ml-12 mt-1">
                <input type="checkbox" id="category1" class="w-5 h-5 border rounded-md">
                <label for="category1" class="ml-2 text-sm font-medium px-2 py-1">Price Range 1</label>
            </div>
            
            <div class="flex items-center ml-12">
                <input type="checkbox" id="category1" class="w-5 h-5 border rounded-md">
                <label for="category1" class="ml-2 text-sm font-medium px-2 py-1">Price Range 2</label>
            </div>

            
            <div class="flex items-center ml-12">
                <input type="checkbox" id="category1" class="w-5 h-5 border rounded-md">
                <label for="category1" class="ml-2 text-sm font-medium px-2 py-1">Price Range 3</label>
            </div>

            
            <div class="flex items-center ml-12">
                <input type="checkbox" id="category1" class="w-5 h-5 border rounded-md">
                <label for="category1" class="ml-2 text-sm font-medium px-2 py-1">Price Range 4</label>
            </div>


            
        </div>

        <!-- Product Display -->
        <div class="flex flex-wrap justify-center gap-[2vw] w-5/6 p-4">

            <div class="relative py-4 w-[17vw] h-[38vh] border border-black rounded-md hover:shadow-lg hover:transform hover:scale-[1.05] duration-300">    
                <img class="block mx-auto w-1/2 mb-6" src="{{ asset('images/placeholder.png') }}" alt="Item image">
                <a href="{{ url('/sell') }}" class="block ml-4 text-lg font-bold semifont-sans">Item Name</a>
                <a href="{{ url('/sell') }}" class="block ml-6 w-full font-thin text-lg">1.99$</a>
                <div class="flex mt-6">
                    <button class="relative mx-auto px-12 py-1 rounded-md font-semibold bg-green-300"> Add to order </button>
                </div>
            </div>

            <div class="relative py-4 w-[17vw] h-[38vh] border border-black rounded-md hover:shadow-lg hover:transform hover:scale-[1.05] duration-300">    
                <img class="block mx-auto w-1/2 mb-6" src="{{ asset('images/placeholder.png') }}" alt="Item image">
                <a href="{{ url('/sell') }}" class="block ml-4 text-lg font-bold semifont-sans">Item Name</a>
                <a href="{{ url('/sell') }}" class="block ml-6 w-full font-thin text-lg">1.99$</a>
                <div class="flex mt-6">
                    <button class="relative mx-auto px-12 py-1 rounded-md font-semibold bg-green-300"> Add to order </button>
                </div>
            </div>

            <div class="relative py-4 w-[17vw] h-[38vh] border border-black rounded-md hover:shadow-lg hover:transform hover:scale-[1.05] duration-300">    
                <img class="block mx-auto w-1/2 mb-6" src="{{ asset('images/placeholder.png') }}" alt="Item image">
                <a href="{{ url('/sell') }}" class="block ml-4 text-lg font-bold semifont-sans">Item Name</a>
                <a href="{{ url('/sell') }}" class="block ml-6 w-full font-thin text-lg">1.99$</a>
                <div class="flex mt-6">
                    <button class="relative mx-auto px-12 py-1 rounded-md font-semibold bg-green-300"> Add to order </button>
                </div>
            </div>
            
            <div class="relative py-4 w-[17vw] h-[38vh] border border-black rounded-md hover:shadow-lg hover:transform hover:scale-[1.05] duration-300">    
                <img class="block mx-auto w-1/2 mb-6" src="{{ asset('images/placeholder.png') }}" alt="Item image">
                <a href="{{ url('/sell') }}" class="block ml-4 text-lg font-bold semifont-sans">Item Name</a>
                <a href="{{ url('/sell') }}" class="block ml-6 w-full font-thin text-lg">1.99$</a>
                <div class="flex mt-6">
                    <button class="relative mx-auto px-12 py-1 rounded-md font-semibold bg-green-300"> Add to order </button>
                </div>
            </div>

            <div class="relative py-4 w-[17vw] h-[38vh] border border-black rounded-md hover:shadow-lg hover:transform hover:scale-[1.05] duration-300">    
                <img class="block mx-auto w-1/2 mb-6" src="{{ asset('images/placeholder.png') }}" alt="Item image">
                <a href="{{ url('/sell') }}" class="block ml-4 text-lg font-bold semifont-sans">Item Name</a>
                <a href="{{ url('/sell') }}" class="block ml-6 w-full font-thin text-lg">1.99$</a>
                <div class="flex mt-6">
                    <button class="relative mx-auto px-12 py-1 rounded-md font-semibold bg-green-300"> Add to order </button>
                </div>
            </div>

            <div class="relative py-4 w-[17vw] h-[38vh] border border-black rounded-md hover:shadow-lg hover:transform hover:scale-[1.05] duration-300">    
                <img class="block mx-auto w-1/2 mb-6" src="{{ asset('images/placeholder.png') }}" alt="Item image">
                <a href="{{ url('/sell') }}" class="block ml-4 text-lg font-bold semifont-sans">Item Name</a>
                <a href="{{ url('/sell') }}" class="block ml-6 w-full font-thin text-lg">1.99$</a>
                <div class="flex mt-6">
                    <button class="relative mx-auto px-12 py-1 rounded-md font-semibold bg-green-300"> Add to order </button>
                </div>
            </div>

            <div class="relative py-4 w-[17vw] h-[38vh] border border-black rounded-md hover:shadow-lg hover:transform hover:scale-[1.05] duration-300">    
                <img class="block mx-auto w-1/2 mb-6" src="{{ asset('images/placeholder.png') }}" alt="Item image">
                <a href="{{ url('/sell') }}" class="block ml-4 text-lg font-bold semifont-sans">Item Name</a>
                <a href="{{ url('/sell') }}" class="block ml-6 w-full font-thin text-lg">1.99$</a>
                <div class="flex mt-6">
                    <button class="relative mx-auto px-12 py-1 rounded-md font-semibold bg-green-300"> Add to order </button>
                </div>
            </div>
            
            <div class="relative py-4 w-[17vw] h-[38vh] border border-black rounded-md hover:shadow-lg hover:transform hover:scale-[1.05] duration-300">    
                <img class="block mx-auto w-1/2 mb-6" src="{{ asset('images/placeholder.png') }}" alt="Item image">
                <a href="{{ url('/sell') }}" class="block ml-4 text-lg font-bold semifont-sans">Item Name</a>
                <a href="{{ url('/sell') }}" class="block ml-6 w-full font-thin text-lg">1.99$</a>
                <div class="flex mt-6">
                    <button class="relative mx-auto px-12 py-1 rounded-md font-semibold bg-green-300"> Add to order </button>
                </div>
            </div>

        </div>

    </main>

@include('partials.footer')

</body>