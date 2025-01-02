<nav id="nav" class="sticky top-0 group/logo font-medium text-blue hover:text-blue hover:bg-opacity-80 duration-500 flex w-full max-h-[65px] bg-white bg-opacity-50 z-10 shadow-lg">
    <div class="flex w-3/6">

        <button onclick="window.location.href='/'" class="m-auto hover:bg-gray hover:bg-opacity-40 duration-300 text-center w-1/2 h-full flex items-center justify-center">
            <h1 class="m-0">Home</h1>
        </button>

        <button onclick="dropdown('storyDD')" class="m-auto group/dd hover:bg-gray hover:bg-opacity-40 duration-300 text-center w-1/2 h-full max-h-[65px] flex items-center justify-center">
            <h1 class="m-0">Our Story</h1>
            <!-- dropdown -->
            <div id="storyDD" class="absolute hidden group-hover/dd:block top-16 w-[22.8vw] h-auto py-4">
                <div class="bg-white rounded-lg m-auto py-2 w-[12rem] h-auto hover:text-darkblue">
                    <a href="{{ '/story' }}">Who We Are</a>
                </div>
            </div>
        </button>

    </div>


    <div class="">
        <a href="{{ '/' }}">
            <img id="centerLogo" class="relative block w-32 group-hover/logo:w-32 transform translate-y-1/2 scale-150 duration-300" src="{{ asset('images/logo.png') }}" alt="wide logo">
        </a>
    </div>

    <div class="flex w-3/6">
        <button onclick="window.location.href='/sell'" class="m-auto hover:bg-gray hover:bg-opacity-40 duration-300 text-center w-1/2 h-full flex items-center justify-center">
            <h1 class="m-0">What we Sell</h1>
        </button>
        <button onclick="window.location.href='/buy'" class="m-auto hover:bg-gray hover:bg-opacity-40 duration-300 text-center w-1/2 h-full flex items-center justify-center">
            <h1 class="m-0">What we Buy</h1>
        </button>
    </div>
</nav>

<script>
    function dropdown(div){
        var dropdownMenu = document.getElementById(div);
        console.log("test");
        dropdownMenu.classList.toggle('hidden');
    }

    // Select the image element
    const logoImage = document.getElementById('centerLogo');
    const navBar = document.getElementById('nav');
    

    // Add scroll event listener
    if(window.location.href.includes("/sell") || window.location.href.includes("/buy") || window.location.href.includes("/story")){
        logoImage.classList.remove('translate-y-1/2');
        logoImage.classList.remove('scale-150');
        nav.classList.remove('text-blue')
        nav.classList.add('text-gray')
    }else{
        window.addEventListener('scroll', () => {
            if (window.scrollY > 50) {
                // Remove the class when scrolling wn
                logoImage.classList.remove('translate-y-1/2');
                logoImage.classList.remove('scale-150');
                logoImage.classList.remove('w-32');
                logoImage.classList.add('w-20');
                nav.classList.remove('text-blue')
                nav.classList.add('text-gray')
    
            } else {
                // Add the class back when at the top
                logoImage.classList.add('translate-y-1/2');
                logoImage.classList.add('scale-150');
                logoImage.classList.remove('w-20');
                logoImage.classList.add('w-32');
                nav.classList.add('text-blue')
                nav.classList.remove('text-gray')
            }
        });
    }

</script>
