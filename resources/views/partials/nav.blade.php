<nav class="relative flex w-full bg-gradient-to-b from-gray to-transparent z-50 py-2">

    <div class="w-1/3">
        <img class="relative block left-1/2 transform -translate-x-1/2 w-32" src="{{ asset('images/logo.png') }}" alt="wide logo">
    </div>

    
    <!-- Menu for Desktop -->
    <div class="relative flex w-2/3 text-center">
        <a href="{{ url('/') }}" class="block m-auto py-1 text-gray rounded-md hover:text-black ml-2">Home</a>
        <a href="{{ url('/sell') }}" class="block m-auto py-1 text-gray rounded-md hover:text-black">What we sell</a>
        <a href="{{ url('/buy') }}" class="block m-auto py-1 text-gray rounded-md hover:text-black">What we buy</a>
        <a href="{{ url('/contact') }}" class="block m-auto py-1 text-gray rounded-md hover:text-black">Contact Us</a>
    </div>    
    
    <!-- burger -->
    <div class="absolute lg:hidden mr-4 right-0 top-1/2 transform -translate-y-1/2">
        <button id="burg" onclick="dropdown()">
            <img class="mx-auto w-12" src="{{ asset('images/logo.png') }}" alt="mob_burger">
        </button>
    </div>

    <!-- Dropdown Menu for Mobile -->
    <div id="dropdownMenu" class="absolute hidden bg-white text-center shadow-lg mt-[71px] w-full">
        <a href="{{ url('/') }}">
            <button class=" py-4 bg-white">Home</button>
        </a>

        <a href="{{ url('/sell') }}">
            <button class=" py-4 bg-white">What we sell</button>
        </a>

        <a href="{{ url('/buy') }}">
            <button class=" py-4 bg-white">What we buy</button>
        </a>

        <a href="{{ url('/contact') }}">
            <button class=" py-4 bg-white">Contact Us</button>
        </a>
    </div>

</nav>

<script>
    function dropdown(){
        var dropdownMenu = document.getElementById('dropdownMenu');
        console.log("test");
        dropdownMenu.classList.toggle('hidden');
    }
</script>
