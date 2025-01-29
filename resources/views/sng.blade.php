@include('partials.head')

<body>
    @include('partials.nav')

    <main class="hidden lg:block">
        <div class="flex w-full h-[92vh]">
            <h1 class="m-auto text-5xl w-1/4 font-bold transform translate-y-full p-0 font-bold tracking-normal transorm -rotate-90">STRUCTURE AND GOVERNANCE.</h1>

            <div class="flex w-3/4">
                <div class="block justify-center px-32 m-auto">

                    <h1 class="text-2xl">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</h1>
                        
                        <div class="flex flex-wrap justify-center mt-12 gap-x-2 gap-y-6">

                            <button onclick="window.location.href='/sng/cso'" class="pl-4 w-[98%] pr-24 text-left py-2 text-black font-bold text-xl rounded-full shadow-lg transition-transform transform bg-transparent border-opacity-50 border-white hover:scale-105 hover:border-gray hover:shadow-black hover:shadow-2xl focus:outline-none">
                            Corporate Structure Overview
                            </button>
                            
                            <button onclick="window.location.href='/sng/cg'" class="pl-4 w-[98%] pr-24 text-left py-2 text-black font-bold text-xl rounded-full shadow-lg transition-transform transform bg-transparent border-opacity-50 border-white hover:scale-105 hover:border-gray hover:shadow-black hover:shadow-2xl focus:outline-none">
                            Corporate Governance
                            </button>

                            <button onclick="window.location.href='/sng/bc'" class="pl-4 w-[98%] pr-24 text-left py-2 text-black font-bold text-xl rounded-full shadow-lg transition-transform transform bg-transparent border-opacity-50 border-white hover:scale-105 hover:border-gray hover:shadow-black hover:shadow-2xl focus:outline-none">
                            Board Composition
                            </button>
                            
                            <button onclick="window.location.href='/sng/bcc'" class="pl-4 w-[98%] pr-24 text-left py-2 text-black font-bold text-xl rounded-full shadow-lg transition-transform transform bg-transparent border-opacity-50 border-white hover:scale-105 hover:border-gray hover:shadow-black hover:shadow-2xl focus:outline-none">
                            Board Committees & Charters
                            </button>

                            <button onclick="window.location.href='/sng/cgp'" class="pl-4 w-[98%] pr-24 text-left py-2 text-black font-bold text-xl rounded-full shadow-lg transition-transform transform bg-transparent border-opacity-50 border-white hover:scale-105 hover:border-gray hover:shadow-black hover:shadow-2xl focus:outline-none">
                            Corporate Governance Policy
                            </button>

                        </div>
                </div>
            </div>

        </div>
    </main>

    <main class="block lg:hidden">
        <div class="flex flex-wrap gap-y-6 w-full py-12 px-4">
            <div class="mx-auto text-center w-full">
                <h1 class="text-2xl font-bold">STRUCTURE AND GOVERNANCE.</h1>
            </div>
            
            <div class="mx-auto text-justify w-full">
                <h1 class="mx-auto text-xl">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</h1>
            </div>

            <div class="flex flex-wrap justify-center mt-12 gap-x-2 gap-y-6">

                <button onclick="window.location.href='/sng/cso'" class="pl-4 w-[98%] pr-24 text-left py-2 text-black font-bold text-xl rounded-full shadow-lg transition-transform transform bg-transparent border-opacity-50 border-white">
                Corporate Structure Overview
                </button>
                
                <button onclick="window.location.href='/sng/cg'" class="pl-4 w-[98%] pr-24 text-left py-2 text-black font-bold text-xl rounded-full shadow-lg transition-transform transform bg-transparent border-opacity-50 border-white">
                Corporate Governance
                </button>

                <button onclick="window.location.href='/sng/bc'" class="pl-4 w-[98%] pr-24 text-left py-2 text-black font-bold text-xl rounded-full shadow-lg transition-transform transform bg-transparent border-opacity-50 border-white">
                Board Composition
                </button>
                
                <button onclick="window.location.href='/sng/bcc'" class="pl-4 w-[98%] pr-24 text-left py-2 text-black font-bold text-xl rounded-full shadow-lg transition-transform transform bg-transparent border-opacity-50 border-white">
                Board Committees & Charters
                </button>

                <button onclick="window.location.href='/sng/cgp'" class="pl-4 w-[98%] pr-24 text-left py-2 text-black font-bold text-xl rounded-full shadow-lg transition-transform transform bg-transparent border-opacity-50 border-white">
                Corporate Governance Policy
                </button>

            </div>

        </div>
    </main>

    @include('partials.footer')
</body>