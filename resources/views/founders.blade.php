@include('partials.head')
<body>
    @include('partials.nav')

    <div class="flex w-full text-center mt-32 px-4">
        <div class="m-auto w-1/2 text-left pl-24">
            <h1 class="text-7xl font-bold">The Founders.</h1>
            <h1 class="text-2xl font-medium ml-2 text-blue">Lorem ipsum dolor sit amet</h1>
        </div>
        <p class="m-auto w-1/2 mt-6 text-left text-lg font-normal leading-loose pr-12">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
    
    </div>

    <!-- CHART -->
    <div class="block mt-44">
        <!-- FIRST ROW -->
        <div class="flex">
            <!-- CEO -->
            <div class="flex w-1/2 h-auto relative items-center justify-center mx-auto max-w-[225px]">
                <div class="rounded-xl overflow-hidden relative text-center p-4 group items-center flex flex-col max-w-sm hover:shadow-2xl transition-all duration-500 shadow-xl">
                    <div class="text-gray-500 group-hover:scale-105 transition-all">
                        <div class="w-48 h-48 rounded-full bg-red-300 border-4 border-black overflow-hidden">
                            <img src="{{ asset('images/richard.jpg') }}" alt="CEO" class="w-full h-full object-cover object-center">
                        </div>
                    </div>
                    <div class="group-hover:pb-10 transition-all duration-500 delay-200">
                        <h1 class="font-semibold text-gray-700 text-2xl">Richard Abanilla</h1>
                        <p class="text-gray-500 text-lg">President</p>
                        <p class="text-gray-500 text-lg">Chief Executive Officer</p>
                    </div>
                    <div class="flex items-center transition-all duration-500 delay-200 group-hover:bottom-3 -bottom-full absolute gap-2 justify-evenly w-full">
                        <div class="flex gap-3 text-md px-4 bg-gray text-white p-1 hover:p-2 transition-all duration-500 delay-200 rounded-full shadow-sm">
                            Contact
                        </div>
                    </div>
                </div>
            </div>
            <!-- CEO END -->
        </div>

        <!-- SECOND ROW -->
        <div class="flex mt-16">
            <!-- CEO -->
            <div class="flex w-1/2 h-auto relative items-center justify-center mx-auto max-w-[225px]">
                <div class="rounded-xl overflow-hidden relative text-center p-4 group items-center flex flex-col max-w-sm hover:shadow-2xl transition-all duration-500 shadow-xl">
                    <div class="text-gray-500 group-hover:scale-105 transition-all">
                        <div class="w-48 h-48 rounded-full bg-red-300 border-4 border-black overflow-hidden">
                            <img src="{{ asset('images/nino.jpg') }}" alt="CEO" class="w-full h-full object-cover object-center">
                        </div>
                    </div>
                    <div class="group-hover:pb-10 transition-all duration-500 delay-200">
                        <h1 class="font-semibold text-gray-700 text-2xl">Nino Feland Mendoza</h1>
                        <p class="text-gray-500 text-lg">Chief Financial Officer</p>
                    </div>
                    <div class="flex items-center transition-all duration-500 delay-200 group-hover:bottom-3 -bottom-full absolute gap-2 justify-evenly w-full">
                        <div class="flex gap-3 text-md px-4 bg-gray text-white p-1 hover:p-2 transition-all duration-500 delay-200 rounded-full shadow-sm">
                            Contact
                        </div>
                    </div>
                </div>
            </div>
            <!-- CEO END -->
            <!-- CEO -->
            <div class="flex w-1/2 h-auto relative items-center justify-center mx-auto max-w-[225px]">
                <div class="rounded-xl overflow-hidden relative text-center p-4 group items-center flex flex-col max-w-sm hover:shadow-2xl transition-all duration-500 shadow-xl">
                    <div class="text-gray-500 group-hover:scale-105 transition-all">
                        <div class="w-48 h-48 rounded-full bg-red-300 border-4 border-black overflow-hidden">
                            <img src="{{ asset('images/kat.jpg') }}" alt="CEO" class="w-full h-full object-cover object-top">
                        </div>
                    </div>
                    <div class="group-hover:pb-10 transition-all duration-500 delay-200">
                        <h1 class="font-semibold text-gray-700 text-2xl">Katrina Abanilla</h1>
                        <p class="text-gray-500 text-lg">Vice President</p>
                        <p class="text-gray-500 text-lg">Chief Operating Officer</p>
                    </div>
                    <div class="flex items-center transition-all duration-500 delay-200 group-hover:bottom-3 -bottom-full absolute gap-2 justify-evenly w-full">
                        <div class="flex gap-3 text-md px-4 bg-gray text-white p-1 hover:p-2 transition-all duration-500 delay-200 rounded-full shadow-sm">
                            Contact
                        </div>
                    </div>
                </div>
            </div>
            <!-- CEO END -->
            <!-- CEO -->
            <div class="flex w-1/2 h-auto relative items-center justify-center mx-auto max-w-[225px]">
                <div class="rounded-xl overflow-hidden relative text-center p-4 group items-center flex flex-col max-w-sm hover:shadow-2xl transition-all duration-500 shadow-xl">
                    <div class="text-gray-500 group-hover:scale-105 transition-all">
                        <div class="w-48 h-48 rounded-full bg-red-300 border-4 border-black overflow-hidden">
                            <img src="{{ asset('images/marlon.jpg') }}" alt="CEO" class="w-full h-full object-cover object-center">
                        </div>
                    </div>
                    <div class="group-hover:pb-10 transition-all duration-500 delay-200">
                        <h1 class="font-semibold text-gray-700 text-2xl">Marlon Balazon</h1>
                        <p class="text-gray-500 text-lg">Chief Marketing Officer</p>
                    </div>
                    <div class="flex items-center transition-all duration-500 delay-200 group-hover:bottom-3 -bottom-full absolute gap-2 justify-evenly w-full">
                        <div class="flex gap-3 text-md px-4 bg-gray text-white p-1 hover:p-2 transition-all duration-500 delay-200 rounded-full shadow-sm">
                            Contact
                        </div>
                    </div>
                </div>
            </div>
            <!-- CEO END -->
        </div>
        <!-- THIRD ROW -->
        <div class="flex mt-16">
            <!-- CEO -->
            <div class="flex w-1/2 h-auto relative items-center justify-center mx-auto max-w-[225px]">
                <div class="rounded-xl overflow-hidden relative text-center p-4 group items-center flex flex-col max-w-sm hover:shadow-2xl transition-all duration-500 shadow-xl">
                    <div class="text-gray-500 group-hover:scale-105 transition-all">
                        <div class="w-48 h-48 rounded-full bg-red-300 border-4 border-black overflow-hidden">
                            <img src="{{ asset('images/aileen.jpg') }}" alt="CEO" class="w-full h-full object-cover object-center">
                        </div>
                    </div>
                    <div class="group-hover:pb-10 transition-all duration-500 delay-200">
                        <h1 class="font-semibold text-gray-700 text-2xl">Aileen Abanilla</h1>
                        <p class="text-gray-500 text-lg">VP Marketing and Sales</p>
                    </div>
                    <div class="flex items-center transition-all duration-500 delay-200 group-hover:bottom-3 -bottom-full absolute gap-2 justify-evenly w-full">
                        <div class="flex gap-3 text-md px-4 bg-gray text-white p-1 hover:p-2 transition-all duration-500 delay-200 rounded-full shadow-sm">
                            Contact
                        </div>
                    </div>
                </div>
            </div>
            <!-- CEO END -->
            <!-- CEO -->
            <div class="flex w-1/2 h-auto relative items-center justify-center mx-auto max-w-[225px]">
                <div class="rounded-xl overflow-hidden relative text-center p-4 group items-center flex flex-col max-w-sm hover:shadow-2xl transition-all duration-500 shadow-xl">
                    <div class="text-gray-500 group-hover:scale-105 transition-all">
                        <div class="w-48 h-48 rounded-full bg-red-300 border-4 border-black overflow-hidden">
                            <img src="{{ asset('images/patrice.jpg') }}" alt="CEO" class="w-full h-full object-cover object-center">
                        </div>
                    </div>
                    <div class="group-hover:pb-10 transition-all duration-500 delay-200">
                        <h1 class="font-semibold text-gray-700 text-2xl">Patrice Hope Ellane Leray</h1>
                        <p class="text-gray-500 text-lg">VP Accounting</p>
                        <p class="text-gray-500 text-lg">CHRO</p>
                    </div>
                    <div class="flex items-center transition-all duration-500 delay-200 group-hover:bottom-3 -bottom-full absolute gap-2 justify-evenly w-full">
                        <div class="flex gap-3 text-md px-4 bg-gray text-white p-1 hover:p-2 transition-all duration-500 delay-200 rounded-full shadow-sm">
                            Contact
                        </div>
                    </div>
                </div>
            </div>
            <!-- CEO END -->
            <!-- CEO -->
            <div class="flex w-1/2 h-auto relative items-center justify-center mx-auto max-w-[225px]">
                <div class="rounded-xl overflow-hidden relative text-center p-4 group items-center flex flex-col max-w-sm hover:shadow-2xl transition-all duration-500 shadow-xl">
                    <div class="text-gray-500 group-hover:scale-105 transition-all">
                        <div class="w-48 h-48 rounded-full bg-red-300 border-4 border-black overflow-hidden">
                            <img src="{{ asset('images/mark.jpg') }}" alt="CEO" class="w-full h-full object-cover object-center">
                        </div>
                    </div>
                    <div class="group-hover:pb-10 transition-all duration-500 delay-200">
                        <h1 class="font-semibold text-gray-700 text-2xl">Mark Seno</h1>
                        <p class="text-gray-500 text-lg">Marketing Officer</p>
                    </div>
                    <div class="flex items-center transition-all duration-500 delay-200 group-hover:bottom-3 -bottom-full absolute gap-2 justify-evenly w-full">
                        <div class="flex gap-3 text-md px-4 bg-gray text-white p-1 hover:p-2 transition-all duration-500 delay-200 rounded-full shadow-sm">
                            Contact
                        </div>
                    </div>
                </div>
            </div>
            <!-- CEO END -->
        </div>
    </div>
    @include('partials.footer')
</body>
</html>