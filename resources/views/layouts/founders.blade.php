@include('partials.head')
<body>
    @include('partials.nav')

    <main class=" mb-32">
        <div class="block">
            <div class="flex w-full py-16">
                <div class="m-auto flex flex-wrap w-full">
                    <div class="flex w-full md:pr-6 border-6">
                        <!-- card -->
                        <div class="m-auto w-1/6 items-center justify-center flex rounded-xl overflow-hidden shadow-xl">
                            @yield('img')
                        </div>
        
                    </div>
                    <div class="w-full text-center my-auto mt-6">
                        <h1 class="font-bold text-4xl md:text-5xl my-1 mb-4 tracking-wider">@yield('name')</h1>
                        <h1 class="font-medium text-textblue text-2xl md:text-3xl my-1 tracking-wide">@yield('title1')</h1>
                        <h1 class="font-medium text-textblue text-2xl md:text-3xl my-1 tracking-wide">@yield('title2')</h1>
                        <h1 class="font-medium text-textblue text-2xl md:text-3xl my-1 tracking-wide">@yield('title3')</h1>
                    </div>

                </div>
            </div>

            <div class="block">
                <p class="text-justify py-6 px-12 md:px-32 font-medium text-lg">
                @yield('p1')
                </p>

                <p class="text-justify py-6 px-12 md:px-32 font-medium text-lg">
                @yield('p2')
                </p>

                <p class="text-justify py-6 px-12 md:px-32 font-medium text-lg">
                @yield('p3')
                </p>

                <p class="text-justify py-6 px-12 md:px-32 font-medium text-lg">
                @yield('p4')
                </p>

            </div>
        </div>
    </main>

    @include('partials.footer')
</body>
</html>