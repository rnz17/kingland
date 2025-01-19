
<div class="flex flex-col w-full bg-gradient-to-b from-lightblue">
    <!-- contact number -->
    <div class="flex flex-wrap pt-24 pb-6">
        <h1 class="text-center lg:text-right text-6xl lg:text-8xl font-black m-auto m-auto lg:mr-4">Contact Us</h1>
        <div class="m-auto lg:mx-4 py-6">
            <p class="text-left text-textblue text-3xl tracking-widest font-semibold m-auto">09999913432</p>
            <p class="text-left text-textblue text-3xl tracking-widest font-semibold m-auto">09564572521</p>
        </div>
        <p class="text-left text-textblue text-3xl tracking-widest font-semibold m-auto lg:ml-4">email@gmail.com</p>
    </div>

    <!-- location -->
    <div class="flex flex-col pb-24 pt-12 lg:pt-6">
        <h1 class="text-right text-3xl font-black m-auto">Where you can Find Us</h1>
        <div class="flex flex-wrap py-12">
            <!-- main office -->
                <div class="flex flex-col m-auto border-b lg:border-r lg:border-b-0 border-lightgray border-opacity-40 text-center lg:text-right w-5/6 lg:w-1/2 p-12">
                    <h1 class="text-4xl tracking-wide font-black m-auto lg:mr-0">Registered Office</h1>
                    <div class="p-6">
                        <p class="text-xl font-semibold text-textblue">Lot 28 Block 7 Phase 4B Golden City, Dila, Santa Rosa City, Laguna</p>
                        <p class="text-xl font-semibold text-textblue py-4">09999913432</p>
                    </div>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m17!1m12!1m3!1d3866.400166885806!2d121.11475!3d14.288166699999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zMTTCsDE3JzE3LjQiTiAxMjHCsDA2JzUzLjEiRQ!5e0!3m2!1sen!2sph!4v1737252095511!5m2!1sen!2sph" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"
                    class="w-full h-[30vh] border-2 border-black rounded-md overflow-hidden"></iframe>
                        
                    <button onclick="headLoc()" class="mt-4 px-4 m-auto w-3/4 lg:w-1/2 hover:w-3/4 duration-500 py-2 bg-textblue text-white rounded">View on Google Maps</button>
                </div>
            <!-- satellite office -->
                <div class="flex flex-col m-auto border-t lg:border-l lg:border-t-0 border-lightgray border-opacity-40 text-center lg:text-left w-5/6 lg:w-1/2 p-12">
                    <h1 class="text-4xl tracking-wide font-black m-auto lg:ml-0">Main Office</h1>
                    <div class="p-6">
                        <p class="text-xl font-semibold text-textblue">Purok 2, Unit A&B San Isidro Rd, Cabuyao, 4025 Laguna</p>
                        <p class="text-xl font-semibold text-textblue py-4">09564572521</p>
                    </div>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d966.8089473805134!2d121.13648336961197!3d14.239462999038919!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd63e1f4b23d55%3A0xaa33964ad35b91f3!2sKingland%20Marketing%20Company%20Inc.!5e0!3m2!1sen!2sph!4v1737249949246!5m2!1sen!2sph" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"
                    class="w-full h-[30vh] border-2 border-black rounded-md overflow-hidden"></iframe>
                    <button onclick="satLoc()" class="mt-4 px-4 m-auto w-3/4 lg:w-1/2 hover:w-3/4 duration-500 py-2 bg-textblue text-white rounded">View on Google Maps</button>

                </div>


        </div>
    </div>

</div>

<script>

    function headLoc() {

        const mapsUrl = `https://maps.app.goo.gl/84mD6DJpfjsGgSEz6`;

        window.open(mapsUrl, "_blank");
    }

    function satLoc() {

      const mapsUrl = `https://maps.app.goo.gl/dWV5W3EcN7d82KJE8`;

      window.open(mapsUrl, "_blank");
    }

</script>

