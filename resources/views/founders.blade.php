@include('partials.head')
<body>
    @include('partials.nav')

    <div class="flex w-full text-center mt-32 px-4">
        <div class="m-auto w-1/2 text-left pl-24">
            <h1 class="text-7xl font-bold tracking-wide">The Founders.</h1>
            <h1 class="text-2xl font-medium ml-2 text-blue">A team focused on <span class="text-darkblue font-bold">The future.</span></h1>
        </div>
        <p class="m-auto w-1/2 mt-6 text-justify tracking-wide text-lg font-normal leading-loose pl-4 pr-12">At Kingland, our leadership stands out because we take a focused and hands-on approach. We’re dedicated to building strong leaders and driving growth in every part of our business, no matter the region or level. With a diverse team bringing a wide range of skills and experience, we’re not just meeting today’s needs—we’re creating solutions that make life better now and set the stage for an even brighter future.</p>
    
    </div>

    <!-- CHART -->
    <div class="block mt-44">
        <!-- FIRST ROW -->
        <div class="flex">
            <!-- CARD CONTAINER -->
            <div class="flex w-1/2 h-auto relative items-center justify-center mx-auto max-w-[225px]">
                <!-- CARD -->
                <div class="rounded-xl overflow-hidden relative text-center p-4 group items-center flex flex-col max-w-sm hover:shadow-2xl transition-all duration-500 shadow-xl">
                    <!-- IMAGE CONTAINER -->
                    <div class="text-gray-500 group-hover:scale-105 transition-all">
                        <div class="w-48 h-48 rounded-full bg-red-300 border-4 border-black overflow-hidden">
                            <img src="{{ asset('images/richard.jpg') }}" class="w-full h-full object-cover object-center">
                        </div>
                    </div>
                    <!-- TEXTS CONTAINER -->
                    <div class="group-hover:pb-10 transition-all duration-500 delay-200">
                        <h1 class="font-semibold text-gray-700 text-2xl">Richard Abanilla</h1>
                        <p class="text-gray-500 text-lg">Chairman of the Board</p>
                        <p class="text-gray-500 text-lg">Chief Executive Officer</p>
                        <p class="text-gray-500 text-lg">President</p>
                    </div>
                    <!-- HOVER -->
                    <div class="block items-center transition-all duration-500 delay-200 group-hover:bottom-3 -bottom-full absolute gap-2 justify-evenly w-full">
                        <button
                        onclick="window.location.href='/founders/ceo'"
                        class="flex justify-center gap-2 items-center mx-auto shadow-xl text-lg bg-gray-50 backdrop-blur-md lg:font-semibold isolation-auto border-gray-50 before:absolute before:w-full before:transition-all before:duration-700 before:hover:w-full before:-left-full before:hover:left-0 before:rounded-full before:bg-darkblue hover:text-white before:-z-10 before:aspect-square before:hover:scale-150 before:hover:duration-700 relative z-10 px-4 py-0 overflow-hidden border-2 rounded-full group">
                        Explore
                        </button>
                    </div>
                </div>
            </div>
            <!-- CARD CONTAINER END -->
        </div>
        <div class="flex mt-2">
            <!-- CARD CONTAINER -->
            <div class="flex w-1/2 h-auto relative items-center justify-center mx-auto max-w-[225px]">
                <!-- CARD -->
                <div class="rounded-xl overflow-hidden relative text-center p-4 group items-center flex flex-col max-w-sm hover:shadow-2xl transition-all duration-500 shadow-xl">
                    <!-- IMAGE CONTAINER -->
                    <div class="text-gray-500 group-hover:scale-105 transition-all">
                        <div class="w-48 h-48 rounded-full bg-red-300 border-4 border-black overflow-hidden">
                            <img src="{{ asset('images/kat.jpg') }}" class="w-full h-full object-cover object-top">
                        </div>
                    </div>
                    <!-- TEXTS CONTAINER -->
                    <div class="group-hover:pb-10 transition-all duration-500 delay-200">
                        <h1 class="font-semibold text-gray-700 text-2xl">Katrina Abanilla</h1>
                        <p class="text-gray-500 text-lg">Chief Operating Officer</p>
                        <p class="text-gray-500 text-lg">Vice President</p>
                    </div>
                    <!-- HOVER -->
                    <div class="flex items-center transition-all duration-500 delay-200 group-hover:bottom-3 -bottom-full absolute gap-2 justify-evenly w-full">
                        <button
                        onclick="window.location.href='/founders/coo'"
                        class="flex justify-center gap-2 items-center mx-auto shadow-xl text-lg bg-gray-50 backdrop-blur-md lg:font-semibold isolation-auto border-gray-50 before:absolute before:w-full before:transition-all before:duration-700 before:hover:w-full before:-left-full before:hover:left-0 before:rounded-full before:bg-darkblue hover:text-white before:-z-10 before:aspect-square before:hover:scale-150 before:hover:duration-700 relative z-10 px-4 py-0 overflow-hidden border-2 rounded-full group">
                        Explore
                        </button>
                    </div>
                </div>
            </div>
            <!-- CARD CONTAINER END -->
        </div>

        <!-- SECOND ROW -->
        <div class="flex mt-16">
            <!-- CARD CONTAINER -->
            <div class="flex w-1/2 h-auto relative items-center justify-center mx-auto max-w-[225px]">
                <!-- CARD -->
                <div class="rounded-xl overflow-hidden relative text-center p-4 group items-center flex flex-col max-w-sm hover:shadow-2xl transition-all duration-500 shadow-xl">
                    <!-- IMAGE CONTAINER -->
                    <div class="text-gray-500 group-hover:scale-105 transition-all">
                        <div class="w-48 h-48 rounded-full bg-red-300 border-4 border-black overflow-hidden">
                            <img src="{{ asset('images/nino.jpg') }}" class="w-full h-full object-cover object-center">
                        </div>
                    </div>
                    <!-- TEXTS CONTAINER -->
                    <div class="group-hover:pb-10 transition-all duration-500 delay-200">
                        <h1 class="font-semibold text-gray-700 text-2xl">Nino Feland Mendoza</h1>
                        <p class="text-gray-500 text-lg">Chief Finance Officer</p>
                    </div>
                    <div class="flex ite
                    <!-- HOVERms-center transition-all duration-500 delay-200 group-hover:bottom-3 -bottom-full absolute gap-2 justify-evenly w-full">
                        <button
                        onclick="window.location.href='/founders/cfo'"
                        class="flex justify-center gap-2 items-center mx-auto shadow-xl text-lg bg-gray-50 backdrop-blur-md lg:font-semibold isolation-auto border-gray-50 before:absolute before:w-full before:transition-all before:duration-700 before:hover:w-full before:-left-full before:hover:left-0 before:rounded-full before:bg-darkblue hover:text-white before:-z-10 before:aspect-square before:hover:scale-150 before:hover:duration-700 relative z-10 px-4 py-0 overflow-hidden border-2 rounded-full group">
                        Explore
                        </button>
                    </div>
                </div>
            </div>
            <!-- CARD CONTAINER END -->
            <!-- CARD CONTAINER -->
            <div class="flex w-1/2 h-auto relative items-center justify-center mx-auto max-w-[225px]">
                <!-- CARD -->
                <div class="rounded-xl overflow-hidden relative text-center p-4 group items-center flex flex-col max-w-sm hover:shadow-2xl transition-all duration-500 shadow-xl">
                    <!-- IMAGE CONTAINER -->
                    <div class="text-gray-500 group-hover:scale-105 transition-all">
                        <div class="w-48 h-48 rounded-full bg-red-300 border-4 border-black overflow-hidden">
                            <img src="{{ asset('images/marlon.jpg') }}" class="w-full h-full object-cover object-center">
                        </div>
                    </div>
                    <!-- TEXTS CONTAINER -->
                    <div class="group-hover:pb-10 transition-all duration-500 delay-200">
                        <h1 class="font-semibold text-gray-700 text-2xl">Marlon Balazon</h1>
                        <p class="text-gray-500 text-lg">Chief Marketing Officer</p>
                    </div>
                    <div class="flex ite
                    <!-- HOVERms-center transition-all duration-500 delay-200 group-hover:bottom-3 -bottom-full absolute gap-2 justify-evenly w-full">
                        <button
                        onclick="window.location.href='/founders/cmo'"
                        class="flex justify-center gap-2 items-center mx-auto shadow-xl text-lg bg-gray-50 backdrop-blur-md lg:font-semibold isolation-auto border-gray-50 before:absolute before:w-full before:transition-all before:duration-700 before:hover:w-full before:-left-full before:hover:left-0 before:rounded-full before:bg-darkblue hover:text-white before:-z-10 before:aspect-square before:hover:scale-150 before:hover:duration-700 relative z-10 px-4 py-0 overflow-hidden border-2 rounded-full group">
                        Explore
                        </button>
                    </div>
                </div>
            </div>
            <!-- CARD CONTAINER END -->
        </div>
        <!-- THIRD ROW -->
        <div class="flex mt-16">
            <!-- CARD CONTAINER -->
            <div class="flex w-1/2 h-auto relative items-center justify-center mx-auto max-w-[225px]">
                <!-- CARD -->
                <div class="rounded-xl overflow-hidden relative text-center p-4 group items-center flex flex-col max-w-sm hover:shadow-2xl transition-all duration-500 shadow-xl">
                    <!-- IMAGE CONTAINER -->
                    <div class="text-gray-500 group-hover:scale-105 transition-all">
                        <div class="w-48 h-48 rounded-full bg-red-300 border-4 border-black overflow-hidden">
                            <img src="{{ asset('images/aileen.jpg') }}" class="w-full h-full object-cover object-center">
                        </div>
                    </div>
                    <!-- TEXTS CONTAINER -->
                    <div class="group-hover:pb-10 transition-all duration-500 delay-200">
                        <h1 class="font-semibold text-gray-700 text-2xl">Aileen Abanilla</h1>
                        <p class="text-gray-500 text-lg">Vice President of Marketing and Sales</p>
                    </div>
                    <div class="flex ite
                    <!-- HOVERms-center transition-all duration-500 delay-200 group-hover:bottom-3 -bottom-full absolute gap-2 justify-evenly w-full">
                        <button
                        onclick="window.location.href='/founders/vpms'"
                        class="flex justify-center gap-2 items-center mx-auto shadow-xl text-lg bg-gray-50 backdrop-blur-md lg:font-semibold isolation-auto border-gray-50 before:absolute before:w-full before:transition-all before:duration-700 before:hover:w-full before:-left-full before:hover:left-0 before:rounded-full before:bg-darkblue hover:text-white before:-z-10 before:aspect-square before:hover:scale-150 before:hover:duration-700 relative z-10 px-4 py-0 overflow-hidden border-2 rounded-full group">
                        Explore
                        </button>
                    </div>
                </div>
            </div>
            <!-- CARD CONTAINER END -->
            <!-- CARD CONTAINER -->
            <div class="flex w-1/2 h-auto relative items-center justify-center mx-auto max-w-[225px]">
                <!-- CARD -->
                <div class="rounded-xl overflow-hidden relative text-center p-4 group items-center flex flex-col max-w-sm hover:shadow-2xl transition-all duration-500 shadow-xl">
                    <!-- IMAGE CONTAINER -->
                    <div class="text-gray-500 group-hover:scale-105 transition-all">
                        <div class="w-48 h-48 rounded-full bg-red-300 border-4 border-black overflow-hidden">
                            <img src="{{ asset('images/patrice.jpg') }}" class="w-full h-full object-cover object-center">
                        </div>
                    </div>
                    <!-- TEXTS CONTAINER -->
                    <div class="group-hover:pb-10 transition-all duration-500 delay-200">
                        <h1 class="font-semibold text-gray-700 text-2xl">Patrice Hope Ellane Leray</h1>
                        <p class="text-gray-500 text-lg">Vice President of Accounting</p>
                        <p class="text-gray-500 text-lg">Chief Human Resources Officer</p>
                    </div>
                    <!-- HOVER -->
                    <div class="flex items-center transition-all duration-500 delay-200 group-hover:bottom-3 -bottom-full absolute gap-2 justify-evenly w-full">
                        <button
                        onclick="window.location.href='/founders/chro'"
                        class="flex justify-center gap-2 items-center mx-auto shadow-xl text-lg bg-gray-50 backdrop-blur-md lg:font-semibold isolation-auto border-gray-50 before:absolute before:w-full before:transition-all before:duration-700 before:hover:w-full before:-left-full before:hover:left-0 before:rounded-full before:bg-darkblue hover:text-white before:-z-10 before:aspect-square before:hover:scale-150 before:hover:duration-700 relative z-10 px-4 py-0 overflow-hidden border-2 rounded-full group">
                        Explore
                        </button>
                    </div>
                </div>
            </div>
            <!-- CARD CONTAINER END -->
            <!-- CARD CONTAINER -->
            <div class="flex w-1/2 h-auto relative items-center justify-center mx-auto max-w-[225px]">
                <!-- CARD -->
                <div class="rounded-xl overflow-hidden relative text-center p-4 group items-center flex flex-col max-w-sm hover:shadow-2xl transition-all duration-500 shadow-xl">
                    <!-- IMAGE CONTAINER -->
                    <div class="text-gray-500 group-hover:scale-105 transition-all">
                        <div class="w-48 h-48 rounded-full bg-red-300 border-4 border-black overflow-hidden">
                            <img src="{{ asset('images/mark.jpg') }}" class="w-full h-full object-cover object-center">
                        </div>
                    </div>
                    <!-- TEXTS CONTAINER -->
                    <div class="group-hover:pb-10 transition-all duration-500 delay-200">
                        <h1 class="font-semibold text-gray-700 text-2xl">Mark Seno</h1>
                        <p class="text-gray-500 text-lg">Chief Strategy Officer</p>
                    </div>
                    <div class="flex ite
                    <!-- HOVERms-center transition-all duration-500 delay-200 group-hover:bottom-3 -bottom-full absolute gap-2 justify-evenly w-full">
                        <button
                        onclick="window.location.href='/founders/cso'"
                        class="flex justify-center gap-2 items-center mx-auto shadow-xl text-lg bg-gray-50 backdrop-blur-md lg:font-semibold isolation-auto border-gray-50 before:absolute before:w-full before:transition-all before:duration-700 before:hover:w-full before:-left-full before:hover:left-0 before:rounded-full before:bg-darkblue hover:text-white before:-z-10 before:aspect-square before:hover:scale-150 before:hover:duration-700 relative z-10 px-4 py-0 overflow-hidden border-2 rounded-full group">
                        Explore
                        </button>
                    </div>
                </div>
            </div>
            <!-- CARD CONTAINER END -->
        </div>
    </div>
    @include('partials.footer')
</body>
</html>