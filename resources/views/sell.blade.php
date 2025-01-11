@include('partials.head')

    @include('partials.nav')

    <main class="flex p-2 h-[92vh] w-full mx-auto h-auto pb-32">

        <!-- Filters -->
        <form action="{{ route('sell') }}" method="GET">
            <div class="block w-full pt-20 pl-8 text-center overflow-y-auto">

                    <input type="text" name="search" placeholder="Search..." class="w-full p-2 border rounded-md">
    
                <!-- Categories -->
                <h1 href="{{ url('/sell') }}" class="font-[500] font-faustina text-lg">Categories</h1>
    
                @foreach($filters as $filter)
                <div class="flex text-left ml-2 items-center py-2 mt-1">
                    <input type="checkbox" id="{{ $filter->id }}" class="w-5 h-5 border rounded-md" name="category[]" value="{{ $filter->id }}">
                    <label for="{{ $filter->id }}" class="ml-2 text-sm font-medium px-2 py-1">{{ $filter->name }}</label>
                </div>
                @endforeach
                
                <button type="submit" class="p-2 mt-6 text-md bg-cyan text-black rounded-md">Apply Filters</button>
            </div>

        </form>

        <!-- Product Display -->
        <div class="flex flex-wrap justify-center gap-[2vw] w-5/6 p-4">
            @if (count($products) > 0)
                @foreach($products as $product)
                    <div id="{{ $product->code }}" class="openModalBtn cursor-pointer relative group text-center p-4 w-[17vw] h-[38vh] border border-black rounded-md hover:shadow-lg hover:transform hover:scale-[1.05] duration-300">
                        <div class="w-full duration-300 overflow-hidden">
                            <img class="block mx-auto w-1/2 mb-6" src="{{ asset('images/products/placeholder.png') }}" alt="Item image">
                            <h1 class="text-lg font-medium mt-16">{{$product->name}}</h1>
                        </div>
                    </div>
                @endforeach
            @else
                <h1 class="text-center mt-32">No items found</h1>
            @endif

            
        </div>
        
        <!-- MODAL DYNAMIC DATA NOT YET WORKING -->
        <div id="modal" class="hidden fixed z-20 top-0 left-0 h-screen w-screen bg-transparent justify-center backdrop-blur-md items-center p-4">
            @php $code = request()->query('code'); @endphp
            @if(isset($code))
                @foreach($products as $product)
                    @if($product->code == $code)
                        <div class="relative block left-1/2 top-1/2 border border-gray border-opacity-50 transform -translate-x-1/2 -translate-y-1/2 w-1/2 h-auto bg-white shadow-2xl p-8 rounded">
                            <img src="{{ asset('images/products/placeholder.png') }}" class="w-40 my-4 shadow-md mx-auto">
                            <div class="items-center">
                                <div class="flex w-full border-b border-black border-opacity-50">
                                    <h1 class="text-xl font-medium mx-auto w-1/2 text-left pl-20">Item:</h1>
                                    <h1 class="text-xl font-medium mx-auto w-1/2 text-center">{{ $product->name }}</h1>
                                </div>
                                <div class="flex w-full border-b border-black border-opacity-50">
                                    <h1 class="text-xl font-medium mx-auto w-1/2 text-left pl-20">Item Code:</h1>
                                    <h1 class="text-xl font-medium mx-auto w-1/2 text-center">{{ $product->name }}</h1>
                                </div>
                                <div class="flex w-full border-b border-black border-opacity-50">
                                    <h1 class="text-xl font-medium mx-auto w-1/2 text-left pl-20">Item Category:</h1>
                                    <h1 class="text-xl font-medium mx-auto w-1/2 text-center">{{ $product->name }}</h1>
                                </div>
                                <div class="flex w-full border-b border-black border-opacity-50">
                                    <h1 class="text-xl font-medium mx-auto w-1/2 text-left pl-20">UOM:</h1>
                                    <h1 class="text-xl font-medium mx-auto w-1/2 text-center">{{ $product->name }}</h1>
                                </div>

                            </div>
                            <button id="closeModalBtn" class="mt-4 px-4 py-2 bg-red-500 text-white rounded-md">Close</button>
                        </div>
                    @endif
                @endforeach
            @else
                    <div class="relative block left-1/2 top-1/2 border border-gray border-opacity-50 transform -translate-x-1/2 -translate-y-1/2 w-1/2 h-auto bg-white shadow-2xl p-8 rounded">
                        <h1 class="text-center">Item not Found</h1>
                        <button id="closeModalBtn" class="mt-4 px-4 py-2 bg-red-500 text-white rounded-md">Close</button>
                    </div>
            @endif
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

        const productId = btn.id;
        const url = new URL(window.location.href);
        url.searchParams.set('code', productId);
        window.history.pushState({}, '', url);
      });
    });

    // Close modal when the close button is clicked
    closeModalBtn.addEventListener('click', () => {
      modal.classList.add('hidden');
      nav.classList.remove('hidden');

    const url = new URL(window.location.href);
    url.searchParams.delete('code');
    window.history.pushState({}, '', url);
    });

    // Optional: Close modal if clicked outside the modal content
    modal.addEventListener('click', (e) => {
      if (e.target === modal) {
        modal.classList.add('hidden');
      }
    });
</script>