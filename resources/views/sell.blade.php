@include('partials.head')

    @include('partials.nav')

    <main class="flex p-2 h-[92vh] w-full mx-auto h-auto pb-32">

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

            @foreach($products as $product)
                <div class="openModalBtn cursor-pointer relative group text-center p-4 w-[17vw] h-[38vh] border border-black rounded-md hover:shadow-lg hover:transform hover:scale-[1.05] duration-300">
                    <div class="w-full duration-300 overflow-hidden">
                        <img class="block mx-auto w-1/2 mb-6" src="{{ asset('images/placeholder.png') }}" alt="Item image">
                        <h1 class="text-lg font-medium mt-16">{{$product->name}}</h1>
                    </div>
                </div>
            @endforeach

        </div>
        
        <!-- MODAL -->
        <div id="modal" class="hidden fixed z-20 top-0 left-0 h-screen w-screen bg-transparent justify-center backdrop-blur-md items-center p-4">
            <div class="relative block left-1/2 top-1/2 border border-gray border-opacity-50 transform -translate-x-1/2 -translate-y-1/2 w-1/2 h-auto bg-white shadow-2xl p-8 rounded">
                <img src="{{ asset('images/placeholder.png') }}" class="w-40 my-4 shadow-md mx-auto">
                <div class="items-center">
                    <div class="flex w-full border-b border-black border-opacity-50">
                        <h1 class="text-xl font-medium mx-auto w-1/2 text-left pl-20">Item:</h1>
                        <h1 class="text-xl font-medium mx-auto w-1/2 text-center">item_name</h1>
                    </div>
                    <div class="flex w-full border-b border-black border-opacity-50">
                        <h1 class="text-xl font-medium mx-auto w-1/2 text-left pl-20">Item Code:</h1>
                        <h1 class="text-xl font-medium mx-auto w-1/2 text-center">item_code</h1>
                    </div>
                    <div class="flex w-full border-b border-black border-opacity-50">
                        <h1 class="text-xl font-medium mx-auto w-1/2 text-left pl-20">Item Category:</h1>
                        <h1 class="text-xl font-medium mx-auto w-1/2 text-center">item_category</h1>
                    </div>
                    <div class="flex w-full border-b border-black border-opacity-50">
                        <h1 class="text-xl font-medium mx-auto w-1/2 text-left pl-20">UOM:</h1>
                        <h1 class="text-xl font-medium mx-auto w-1/2 text-center">item_uom</h1>
                    </div>

                </div>
                <button id="closeModalBtn" class="mt-4 px-4 py-2 bg-red-500 text-white rounded-md">Close</button>
            </div>
        </div>  

    </main>

@include('partials.footer')

</body>
<script>
    // MODAL SCRIPT
    // Get modal and buttons
    const modal = document.getElementById('modal');
    const openModalBtns = document.querySelectorAll('.openModalBtn');
    const closeModalBtn = document.getElementById('closeModalBtn');
    const nav = document.getElementById('nav');

    // Open modal when any button with the 'openModalBtn' class is clicked
    openModalBtns.forEach(btn => {
      btn.addEventListener('click', () => {
        modal.classList.remove('hidden');
        nav.classList.add('hidden');
      });
    });

    // Close modal when the close button is clicked
    closeModalBtn.addEventListener('click', () => {
      modal.classList.add('hidden');
      nav.classList.remove('hidden');
    });

    // Optional: Close modal if clicked outside the modal content
    modal.addEventListener('click', (e) => {
      if (e.target === modal) {
        modal.classList.add('hidden');
      }
    });
</script>