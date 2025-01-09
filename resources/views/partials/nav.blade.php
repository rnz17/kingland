@if (request()->is('dashboard'))
    <nav id="nav" class="fixed z-50 flex h-16 duration-500 bg-white w-full">

        <div class="my-auto ml-4 text-xl font-bold tracking-wide">
            <h1>KINGLAND MARKETING COMPANY INC.</h1>
        </div>

        <!-- / for root but no / for other views -->
        <div class="flex mx-auto my-0 p-auto items-center w-32  
        {{ request()->is('/') ? 'border-b-2 border-blue' : '' }}">
            <a href="{{ '/' }}" class="text-center w-full">Home</a>
        </div>

        <div class="flex mx-auto my-0 p-auto items-center w-32  
        {{ request()->is('/') ? 'border-b-2 border-blue' : '' }}">
            <a href="{{ route('createProduct') }}" class="text-center w-full">Add Product</a>
        </div>

        <div class="flex mx-auto my-0 p-auto items-center w-32 hover:border-b-2 hover:border-blue duration-300 
        {{ request()->is('dashboard') ? 'border-b-2 border-blue' : '' }}">
            <a href="{{ route('profile.edit') }}" class="text-center w-full">{{ Auth::user()->name }}</a>
        </div>

        

        <div class="flex mx-auto my-0 p-auto items-center w-32 hover:border-b-2 hover:border-red-500 duration-300">
            <form method="POST" action="{{ route('logout') }}" class="w-full">
                @csrf
            <button type="submit" class="text-center w-full h-full flex items-center justify-center">Log out</button>
            </form>
        </div>

    </nav>
    <div class="h-16">

    </div>
@else
    <nav id="nav" class="fixed z-50 flex h-16 duration-500 bg-white w-full">

        <div class="my-auto ml-4 text-xl font-bold tracking-wide">
            <h1>KINGLAND MARKETING COMPANY INC.</h1>
        </div>

        <!-- / for root but no / for other views -->
        <div class="flex mx-auto my-0 p-auto items-center w-32  
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

        <div class="flex mx-auto my-0 p-auto items-center w-32 hover:border-b-2 hover:border-blue duration-300 
        {{ request()->is('sell') ? 'border-b-2 border-blue' : '' }}">
            <a href="{{ '/sell' }}" class="text-center w-full">What we Sell</a>
        </div>

        <div class="flex mx-auto my-0 p-auto items-center w-32 hover:border-b-2 hover:border-blue duration-300 
        {{ request()->is('buy') ? 'border-b-2 border-blue' : '' }}">
            <a href="{{ '/buy' }}" class="text-center w-full">What we Buy</a>
        </div>

        <div class="flex mx-auto my-0 p-auto items-center w-32 hover:border-b-2 hover:border-blue duration-300 
        {{ request()->is('dashboard') ? 'border-b-2 border-blue' : '' }}">
            <a href="{{ '/dashboard' }}" class="text-center w-full">Dashboard</a>
        </div>
    </nav>
    <div class="h-16">

    </div>
@endif

<script>
    
    function toggleHIDE(div){
        var dropdownMenu = document.getElementById(div);
        dropdownMenu.classList.toggle('hidden');
        console.log('test');
    }
    
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
