@if (Str::contains(request()->path(), ['dashboard','profile','createProduct','editProduct','blog']))
    <nav id="nav" class="fixed z-50 flex h-16 duration-500 bg-white w-full shadow-xl">

        
        <div class="my-auto ml-8 text-xl font-bold tracking-wide h-full py-2">
            <a href="{{ route('home') }}">
                <img src="{{ asset('images/kingland/text_color.png') }}" class="h-full" >
            </a>
        </div>

        <!-- / for root but no / for other views -->
        <div class="flex mx-auto my-0 p-auto items-center w-32 border-b-2 border-transparent hover:border-blue  
        {{ request()->is('/') ? 'border-b-2 border-blue' : '' }}">
            <a href="{{ '/' }}" class="text-center w-full">Home</a>
        </div>

        <div class="flex mx-auto my-0 p-auto items-center w-32 border-b-2 border-transparent hover:border-blue  
        {{ request()->is('dashboard') ? 'border-b-2 border-blue' : '' }}">
            <a href="{{ route('dashboard') }}" class="text-center w-full">Dashboard</a>
        </div>

        <div class="flex mx-auto my-0 p-auto items-center w-32 border-b-2 border-transparent hover:border-blue border-b-2 border-green-400  
        {{ request()->is('createProd') ? 'border-b-2 border-blue' : '' }}">
            <a href="{{ route('createProduct') }}" class="text-center w-full">Add Product</a>
        </div>

        <div class="flex mx-auto my-0 p-auto items-center w-32 border-b-2 border-transparent hover:border-blue border-b-2 border-green-400  
        {{ request()->is('blogEditor') ? 'border-b-2 border-blue' : '' }}">
            <a href="{{ route('blogEditor') }}" class="text-center w-full">Create Blog</a>
        </div>

        <div class="flex mx-auto my-0 p-auto items-center w-32 border-b-2 border-transparent hover:border-blue border-b-2 border-green-400  
        {{ request()->is('requests') ? 'border-b-2 border-blue' : '' }}">
            <a href="{{ route('requests') }}" class="text-center w-full">Requests</a>
        </div>

        <div class="flex mx-auto my-0 p-auto items-center w-32 border-b-2 border-transparent hover:border-blue hover:border-b-2 hover:border-blue duration-300 
        {{ request()->is('profile') ? 'border-b-2 border-blue' : '' }}">
            <a href="{{ route('profile.edit') }}" class="text-center w-full">{{ Auth::user()->name }}</a>
        </div>

        

        <div class="flex mx-auto my-0 p-auto items-center w-32 border-b-2 border-transparent hover:border-blue hover:border-b-2 hover:border-red-500 duration-300">
            <form method="POST" action="{{ route('logout') }}" class="w-full">
                @csrf
            <button type="submit" class="text-center w-full h-full flex items-center justify-center">Log out</button>
            </form>
        </div>

    </nav>
    <div class="h-16">

    </div>
@else
    <nav id="nav" class="fixed z-50 flex h-16 duration-500 bg-white w-full shadow-xl">

        <div class="my-auto ml-8 text-xl font-bold tracking-wide h-full py-2">
            <a href="{{ route('home') }}">
                <img src="{{ asset('images/kingland/text_color.png') }}" class="h-full" >
            </a>
        </div>

        <!-- / for root but no / for other views -->
        <div class="flex mx-auto my-0 p-auto items-center w-32 border-b-2 border-transparent hover:border-blue  
        {{ request()->is('/') ? 'border-b-2 border-blue' : '' }}">
            <a href="{{ '/' }}" class="text-center w-full">Home</a>
        </div>

        <div class="block group/dd mx-auto my-0 py-auto items-center w-32 overflow-hidden">
        
            <div class="relative transform top-1/2 -translate-y-1/2 w-full text-center group-hover/dd:opacity-0 group-hover/dd:translate-y-[200%] duration-500">Our Story</div>

            <div class="relative flex flex-wrap transform w-full h-full text-center group-hover/dd:opacity-100 -translate-y-[200%] group-hover/dd:-translate-y-[37.5%] opacity-0 duration-500">
                <a href="{{ '/story' }}" class="w-full text-sm hover:text-darkblue hover:scale-105 hover:scale-x-110 duration-300">Who we Are</a>
                <a href="{{ '/history' }}" class="w-full text-sm hover:text-darkblue hover:scale-105 hover:scale-x-110 duration-300">Our History</a>
                <a href="{{ '/founders' }}" class="w-full text-sm hover:text-darkblue hover:scale-105 hover:scale-x-110 duration-300">Leadership</a>
            </div>

        </div>

        <div class="flex mx-auto my-0 p-auto items-center w-32 border-b-2 border-transparent hover:border-blue hover:border-b-2 hover:border-blue duration-300 
        {{ request()->is('sell') ? 'border-b-2 border-blue' : '' }}">
            <a href="{{ '/sell' }}" class="text-center w-full">What we Sell</a>
        </div>

        <div class="flex mx-auto my-0 p-auto items-center w-32 border-b-2 border-transparent hover:border-blue hover:border-b-2 hover:border-blue duration-300 
        {{ request()->is('buy') ? 'border-b-2 border-blue' : '' }}">
            <a href="{{ '/buy' }}" class="text-center w-full">What we Buy</a>
        </div>

        <div class="flex mx-auto my-0 p-auto items-center w-32 border-b-2 border-transparent hover:border-blue hover:border-b-2 hover:border-blue duration-300 
        {{ request()->is('dashboard') ? 'border-b-2 border-blue' : '' }}">
            <a href="{{ '/dashboard' }}" class="text-center w-full">Dashboard</a>
        </div>

        @if (Str::contains(request()->path(), ['sell']))
            <button onclick="toggleBasket()" class="flex mx-auto my-0 p-auto items-center w-32 border-b-2 border-transparent hover:border-blue hover:border-b-2 hover:border-blue duration-300 
            {{ request()->is('dashboard') ? 'border-b-2 border-blue' : '' }}">
                <img src="{{ asset('images/products/placeholder.png') }}" class="m-auto h-1/2">
            </button>
        @endif
        
    </nav>
    <div class="h-16">

    </div>

    <div id="basket" class="fixed left-full top-0 w-1/4 bg-notwhite h-screen z-50 duration-500 shadow-xl border-l border-gray border-opacity-50 shadow-xl">
        <div class="flex w-full overflow-hidden">
            <div class="w-16">
            </div>
            <h1 class="m-auto">Inquiry Basket</h1>
            <button onclick="toggleBasket()" class="w-16">
                <img src="{{ asset('images/products/placeholder.png') }}" class="m-auto h-1/2">
            </button>
        </div>
        <div id="basketCont" class="block border-y border-gray border-opacity-50">

        </div>
        
        <div class="flex w-full overflow-hidden">
            <button onclick="sendEmail('basket')" class="mt-4 mx-auto px-2 min-w-24 py-2 bg-green-400 text-white rounded-md shadow-lg border border-gray border-opacity-20 hover:scale-105 duration-300">Inquire</button>
        </div>

    </div>
@endif

<script>
    
    function toggleHIDE(div){
        var dropdownMenu = document.getElementById(div);
        dropdownMenu.classList.toggle('hidden');
        console.log('test');
    }

    function toggleBasket(){
        const basket = document.getElementById('basket');

        basket.classList.toggle('-translate-x-full');

    }
    
// scroll listener
    let lastScrollTop = 0;
    window.addEventListener("scroll", function() {
        let nav = document.getElementById("nav");
        let scrollTop = window.pageYOffset || document.documentElement.scrollTop;
        if (scrollTop > lastScrollTop) {
            // Scroll down
            nav.classList.add("opacity-0");
        } else {
            // Scroll up
            nav.classList.remove("opacity-0");
        }
        lastScrollTop = scrollTop <= 0 ? 0 : scrollTop; // For Mobile or negative scrolling
    }, false);


</script>
