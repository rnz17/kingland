@if (Str::contains(request()->path(), ['dashboard']))
    <nav id="nav" class="fixed z-50 flex h-20 duration-500 bg-white w-full shadow-xl">

        
        <div class="my-auto ml-8 text-xl font-bold tracking-wide h-full py-1">
            <a href="{{ route('home') }}">
                <img src="{{ asset('images/kingland/logo_wide.png') }}" class="h-full hidden lg:block" >
                <img src="{{ asset('images/kingland/logo.png') }}" class="h-full block lg:hidden" >
            </a>
        </div>
        
        <a href="{{ route('dashboard') }}" class="flex mx-auto my-0 p-auto items-center hover:text-textblue w-32 border-b-2 border-transparent hover:border-blue text-center text-lg">
            <div class="w-full">
                Dashboard
            </div>
        </a>

        <a href="{{ route('inquiries.index') }}" class="flex mx-auto my-0 p-auto items-center hover:text-textblue w-32 border-b-2 border-transparent hover:border-blue text-center text-lg">
            <div class="w-full">
                Inquiries
            </div>
        </a>

        <a href="{{ route('blogs.index') }}" class="flex mx-auto my-0 p-auto items-center hover:text-textblue w-32 border-b-2 border-transparent hover:border-blue text-center text-lg">
            <div class="w-full">
                Blogs
            </div>
        </a>

        <a href="{{ route('service.index') }}" class="flex mx-auto my-0 p-auto items-center hover:text-textblue w-32 border-b-2 border-transparent hover:border-blue text-center text-lg">
            <div class="w-full">
                What we offer
            </div>
        </a>

        <a href="{{ route('users.requests') }}" class="flex mx-auto my-0 p-auto items-center hover:text-textblue w-32 border-b-2 border-transparent hover:border-blue text-center text-lg">
            <div class="w-full">
                Requests
            </div>
        </a>


        <button onclick="toggleHIDE('profile')" class="flex mx-auto my-0 p-4 items-center hover:text-textblue w-32 border-b-2 border-transparent hover:border-blue-30">
            <img src="{{ asset('images/nav/profile_fill.png') }}" class="h-full m-auto">
        </button>
        
    </nav>

    <div id="profile" class="absolute hidden flex flex-wrap right-0 top-20 bg-notwhite z-40 w-56">
        <a href="{{ route('profile.edit') }}" class="py-4 flex mx-auto my-0 p-auto items-center hover:text-textblue w-32 border-b-2 border-transparent hover:border-blue text-center text-lg">
            {{ Auth::check() ? Auth::user()->name : 'Null please re-login' }}</a>
        <form method="POST" action="{{ route('logout') }}" class="w-full">
            @csrf
        <button type="submit" class="py-4 flex mx-auto my-0 p-auto items-center hover:text-textblue w-32 border-b-2 border-transparent hover:border-blue text-center text-lg h
        -full flex items-center justify-center">Log out</button>
        </form>
    </div>
    


    <div class="h-20">

    </div>
@else
    <nav id="nav" class="fixed z-50 flex h-20 duration-500 bg-white w-full shadow-xl z-50">
        <!-- mobile only Logo -->
        <div class="flex m-auto lg:hidden h-full w-1/3 p-2 ml-0">
            <button onclick="toggleHIDE('dashboard')" class="h-1/2 m-auto ml-2">
                <img src="{{ asset('images/nav/dd_square.png') }}" class="h-full">
            </button>
        </div>

        <!-- mob and desk Logo -->
        <div class="flex m-auto lg:ml-0 h-full py-2 w-1/3 lg:w-1/4">
            <a href="{{ route('home') }}" class="h-full w-full m-auto lg:pl-2">
                <img src="{{ asset('images/kingland/logo.png') }}" class="h-full m-auto lg:hidden">
                <img src="{{ asset('images/kingland/logo_wide.png') }}" class="h-full m-auto hidden lg:block">
            </a>
        </div>

        <!-- mobile only Nav Button -->
        <div class="flex m-auto lg:hidden h-full w-1/3 p-2 mr-0">
            @if (Str::contains(request()->path(), ['sell']))
                <button id="burger" onclick="toggleFilter()" class="m-auto md:hidden h-full">
                    <h1 class="text-gray font-semibold">Filters</h1>
                </button>
                <button onclick="toggleBasket()" class="m-auto mr-2 lg:hidden h-full">
                    <img src="{{ asset('images/nav/basket.png') }}" class="m-auto h-1/2">
                </button>
            @endif
        </div>

        <!-- Nav Buttons -->
        <div class="hidden lg:flex w-3/4">
            <a href="{{ '/' }}" class="flex mx-auto my-0 p-auto items-center hover:text-textblue w-32 border-b-2 border-transparent hover:border-blue text-center text-lg">
                <div class="w-full">
                    <h1 class="text-center">Home</h1>
                </div>        
            </a>
            
            <div class="block group/dd mx-auto my-0 py-auto items-center w-32 overflow-hidden">
            
                <div class="relative transform top-1/2 -translate-y-1/2 text-lg w-full text-center group-hover/dd:opacity-0 group-hover/dd:translate-y-[200%] duration-500">Our Story</div>

                <div class="relative flex flex-wrap transform w-full h-full text-center group-hover/dd:opacity-100 -translate-y-[200%] group-hover/dd:-translate-y-[3vh] opacity-0 duration-500">
                    <a href="{{ '/story' }}" class="w-full text-md hover:text-textblue hover:scale-105 hover:scale-x-110 duration-300">Who we Are</a>
                    <a href="{{ '/history' }}" class="w-full text-md hover:text-textblue hover:scale-105 hover:scale-x-110 duration-300">Our History</a>
                    <a href="{{ '/founders' }}" class="w-full text-md hover:text-textblue hover:scale-105 hover:scale-x-110 duration-300">Leadership</a>
                </div>

            </div>

            <a href="{{ '/services' }}" class="flex mx-auto my-0 p-auto items-center hover:text-textblue w-32 border-b-2 border-transparent hover:border-blue text-center text-lg">
                <div class="w-full">
                    What we Offer
                </div>
            </a>


            <a href="{{ '/sell' }}" class="flex mx-auto my-0 p-auto items-center hover:text-textblue w-32 border-b-2 border-transparent hover:border-blue text-center text-lg">
                <div class="w-full">
                    What we Sell
                </div>
            </a>

            <!-- temporarily replace by next sibling (Our Company) -->
            <!-- <a href="{{ '/buy' }}" class="flex mx-auto my-0 p-auto items-center hover:text-textblue w-32 border-b-2 border-transparent hover:border-blue text-center text-lg">
                <div class="w-full">
                    What we Buy
                </div>
            </a> -->

            <a href="{{ '/contact' }}" class="flex mx-auto bg-blue hover:scale-x-105 text-white my-0 p-auto items-center w-40 border-b-2 border-transparent text-center text-lg duration-300">
                <div class="w-full">
                    Contact Us
                </div>
            </a>

            @if (Str::contains(request()->path(), ['sell']))
                <button onclick="toggleBasket()" class="flex mx-auto my-0 p-auto items-center hover:text-textblue w-32 border-b-2 border-transparent hover:border-blue">
                    <img src="{{ asset('images/nav/basket.png') }}" class="m-auto h-1/2">
                </button>
            @endif
        </div>
    </nav>

    <!-- mobile dashboard dropdown -->
        <div id="dashboard" class="absolute hidden sticky top-20 bg-notwhite w-full p-4 z-40 text-lg text-textblue font-medium shadow-xl">

            <div class="flex">
                <a href="{{ route('home') }}" class="text-center w-full py-4 active:bg-darkblue active:text-white">Home</a>
            </div>

            <div class="block">
                <div class="flex">
                    <button onclick="toggleHIDE('story')" class="text-center w-full py-4 active:bg-darkblue active:text-white">Our Story</button>
                </div>
                <div id="story" class="hidden flex flex-wrap bg-lightgray">
                    <a href="{{ route('story') }}" class="text-center w-full py-4 active:bg-darkblue active:text-white">Who we are</a>
                    <a href="{{ route('history') }}" class="text-center w-full py-4 active:bg-darkblue active:text-white">Our History</a>
                    <a href="/founders" class="text-center w-full py-4 active:bg-darkblue active:text-white">Leadership</a>
                </div>
            </div>
            
            <div class="flex">
                <a href="{{ route('services') }}" class="text-center w-full py-4 active:bg-darkblue active:text-white">What we Offer</a>
            </div>

            <div class="flex">
                <a href="{{ route('sell') }}" class="text-center w-full py-4 active:bg-darkblue active:text-white">What we Sell</a>
            </div>

            <div class="flex">
                <a href="{{ route('contact') }}" class="text-center w-full py-4 bg-blue text-white active:bg-white active:text-textblue">Contact Us</a>
            </div>



        </div>

    <!-- basket -->
        <div id="basket" class="fixed left-full top-0 w-full lg:w-1/4 bg-notwhite h-screen z-50 duration-500 shadow-xl border-l border-gray border-opacity-50 shadow-xl">
            <div class="flex w-full h-16 overflow-hidden">
                <div class="w-16">
                </div>
                <h1 class="m-auto">Inquiry Basket</h1>
                <button onclick="toggleBasket()" class="w-16">
                    <img src="{{ asset('images/nav/basket.png') }}" class="m-auto h-1/2">
                </button>
            </div>
            <div id="basketCont" class="block border-y border-gray border-opacity-50">

            </div>
            
            <div class="flex w-full overflow-hidden">
                <button onclick="sendEmail('basket')" class="mt-4 mx-auto px-2 min-w-24 py-2 bg-green-400 text-white rounded-md shadow-lg border border-gray border-opacity-20 hover:scale-105 duration-300">Inquire</button>
            </div>

        </div>


    <div class="h-20">

    </div>
@endif

<script>
    
    function toggleHIDE(div){
        var dropdownMenu = document.getElementById(div);
        dropdownMenu.classList.toggle('hidden');
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
