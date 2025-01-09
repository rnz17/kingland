@include('partials.head')


    @include('partials.nav')

    <main>
        <div class="flex w-full h-[92vh] -mb-32">
            <button onclick="toggleHIDE('sngOpt')" class="absolute z-50 left-6 top-16">
                <img src="/images/burger.png" alt="nav" class="lg:hidden w-10">
            </button>
            <div id="sngOpt" class="hidden absolute lg:relative lg:block mx-auto w-full bg-white h-full lg:w-1/4 p-4">
                <h1 class="text-center font-bold text-2xl my-4">Structure and Governance</h1>     
                
                <div class="flex flex-wrap relative top-1/3 transform -translate-y-1/2">
                    <button onclick="window.location.href='/sng/cso'" class="my-1 w-[98%] h-12 text-left pl-4 py-2 text-black font-bold text-lg rounded-full shadow-lg transition-transform transform bg-transparent border-2 border-gray border-opacity-20 hover:border-gray hover:shadow-black hover:shadow-2xl focus:outline-none">
                    Corporate Structure Overview
                    </button>
    
                    <button onclick="window.location.href='/sng/cg'" class="my-1 w-[98%] h-12 text-left pl-4 py-2 text-black font-bold text-lg rounded-full shadow-lg transition-transform transform bg-transparent border-2 border-gray border-opacity-20 hover:border-gray hover:shadow-black hover:shadow-2xl focus:outline-none">
                    Corporate Governance
                    </button>
    
                    <button onclick="window.location.href='/sng/bc'" class="my-1 w-[98%] h-12 text-left pl-4 py-2 text-black font-bold text-lg rounded-full shadow-lg transition-transform transform bg-transparent border-2 border-gray border-opacity-20 hover:border-gray hover:shadow-black hover:shadow-2xl focus:outline-none">
                    Board Composition
                    </button>
    
                    <button onclick="window.location.href='/sng/bcc'" class="my-1 w-[98%] h-12 text-left pl-4 py-2 text-black font-bold text-lg rounded-full shadow-lg transition-transform transform bg-transparent border-2 border-gray border-opacity-20 hover:border-gray hover:shadow-black hover:shadow-2xl focus:outline-none">
                    Board Committees & Charters
                    </button>
    
                    <button onclick="window.location.href='/sng/cgp'" class="my-1 w-[98%] h-12 text-left pl-4 py-2 text-black font-bold text-lg rounded-full shadow-lg transition-transform transform bg-transparent border-2 border-gray border-opacity-20 hover:border-gray hover:shadow-black hover:shadow-2xl focus:outline-none">
                    Corporate Governance Policy
                    </button>

                    <button onclick="toggleHIDE('sngOpt')" class="mx-auto mt-32 lg:hidden w-[38%] h-12 text-center py-2 text-black font-bold text-lg rounded-full shadow-lg transition-transform transform bg-red-200 border-2 border-gray border-opacity-20 hover:border-gray hover:shadow-black hover:shadow-2xl focus:outline-none">
                    Close
                    </button>
                </div>

            
            </div>
            <div class="hidden lg:block w-2 shadow-lg bg-gradient-to-r from-lightgray ">

            </div>
            
            <div class="mx-auto flex w-full lg:w-3/4 overflow-y-scroll">
                <div class="mx-auto text-left lg:text-justify text-lg block px-24">
                    <h1 class="text-center font-bold text-2xl lg:text-4xl my-4">
                        @yield('title')
                    </h1>

                    <p class="py-12">
                        @yield('content')
                    </p>

                </div>   

            
            </div>

        </div>
    </main>

    @include('partials.footer')
</body>