@include('partials.head')
<body>
    @include('partials.nav')

    <main>
        <div class="block">
            <div class="flex w-full py-16">
                <div class="m-auto flex w-full">
                    <div class="w-1/2 pr-6 border-6">
                        <!-- card -->
                        <div class="relative left-[100%] transform -translate-x-full group overflow-hidden border-2 border-darkgray border-opacity-20 w-60 h-60 rounded-3xl cursor-pointer text-2xl font-bold bg-notwhite shadow-lg">
                            <div class="z-10 absolute w-full h-full peer">
            
                            </div>
                            <div class="absolute peer-hover:-top-20 peer-hover:-left-16 peer-hover:w-[140%] peer-hover:h-[140%] -top-32 -left-16 w-32 h-44 rounded-full bg-transparent group-hover:bg-lightblue transition-all duration-1000">
            
                            </div>
                            <div class="absolute flex text-xl text-left items-end justify-end peer-hover:right-0 peer-hover:rounded-b-none peer-hover:bottom-0 peer-hover:items-center peer-hover:justify-center peer-hover:w-full peer-hover:h-full -bottom-32 -right-16 w-36 h-44 rounded-full bg-transparent group-hover:bg-lightblue transition-all duration-1000">
                                some text sample
                            </div>
                            <div class="w-full h-full items-center justify-center flex uppercase">
                                @yield('img')
                            </div>
                        </div>
        
                    </div>
                    <div class="w-2/3 my-auto pl-6">
                        <h1 class="font-bold text-5xl my-1 mb-4 tracking-wider">@yield('name')</h1>
                        <h1 class="font-medium text-darkblue text-3xl my-1 tracking-wide">@yield('title1')</h1>
                        <h1 class="font-medium text-darkblue text-3xl my-1 tracking-wide">@yield('title2')</h1>
                        <h1 class="font-medium text-darkblue text-3xl my-1 tracking-wide">@yield('title3')</h1>
                    </div>
                </div>
            </div>

            <div class="block">
                <p class="text-justify py-6 px-32 font-medium text-lg">
                @yield('p1')
                </p>

                <p class="text-justify py-6 px-32 font-medium text-lg">
                @yield('p2')
                </p>

                <p class="text-justify py-6 px-32 font-medium text-lg">
                @yield('p3')
                </p>

                <p class="text-justify py-6 px-32 font-medium text-lg">
                @yield('p4')
                </p>

            </div>
        </div>
    </main>

    @include('partials.footer')
</body>
</html>