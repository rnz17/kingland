   <!-- resources/views/components/ProductCard.blade.php -->
   <div class="group w-[16rem] h-[19rem] transform hover:z-50 [perspective:1000px] duration-500"
        x-data="{ isFlipped: false }"
        @click="isFlipped = !isFlipped"
        :class="{ 'hover:scale-125': isFlipped, 'hover:scale-100': !isFlipped }">
       <div class="relative w-full h-full transition-transform duration-500 [transform-style:preserve-3d]"
            :class="{ '[transform:rotateY(180deg)]': isFlipped, '[transform:rotateY(0deg)]': !isFlipped }">

           <!-- Front Side -->
           <div class="absolute w-full h-[19rem] bg-white border border-gray border-opacity-10 flex flex-col items-center justify-center text-2xl shadow-xl rounded-xl [backface-visibility:hidden]">
               <div class="flex h-2/3 w-full p-2">
                   <img src="{{ asset('storage/images/products/' . $productCode . '.png') }}" class="m-auto w-auto h-auto max-w-[15rem] max-h-full">
               </div>
               <div class="flex h-1/3 w-full m-auto p-2 text-center">
                   <h1 class="m-auto text-base opacity-90">{{ $productName }}</h1>
               </div>
           </div>
           
           <!-- Back Side -->
           <div class="absolute w-full h-auto min-h-[19rem] bg-[#131A35] text-[#FDFDFD] border border-gray border-opacity-10 flex flex-col items-center justify-center text-2xl shadow-xl rounded-xl [backface-visibility:hidden] [transform:rotateY(180deg)] px-1 py-2">
               <!-- Back side content -->
           </div>
       </div>
   </div>