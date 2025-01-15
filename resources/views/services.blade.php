@include('partials.head')
@include('partials.nav')

<!-- SERVICES -->

    <!-- Services modal -->
      <div id="modal" class="hidden fixed z-20 top-0 left-0 h-screen w-screen bg-transparent justify-center backdrop-blur-md items-center p-4">
            <div class="relative block left-1/2 top-1/2 border border-gray border-opacity-50 transform -translate-x-1/2 -translate-y-1/2 w-5/6 lg:w-1/2 h-auto bg-white shadow-2xl p-8 rounded-xl">
                <img id="modalImg" src="" class="w-40 my-4 mx-auto">
                <div class="flex w-full">
                  <h1 id="modalContTitle" class="m-auto w-auto text-4xl p-4 font-bold text-center">
                  </h1>
                </div>
                <div class="flex w-full">
                  <p id="modalContText" class="m-auto w-2/3 text-xl py-4 font-semibold text-center">
                  </p>
                </div>
                <button id="closeModalBtn" class="mt-4 px-4 py-2 bg-red-500 text-white rounded-md">Close</button>
            </div>
        </div>    

    <!-- Services -->

        <div class="relative block text-center w-full mt-12 py-2 pb-24 h-auto mb-2">
            <h1 class="font-black text-darkblue tracking-wide text-4xl">OUR SERVICES</h1>
            <h1 class="mt-2 font-medium text-darkblue text-2xl">Services and Products we provide</h1>
            <!-- card container -->
              <div class="flex flex-wrap justify-center items-center gap-20 mt-20"> 
              
              @foreach($filters as $filter)
                <!-- card -->
                  <div class="group bg-notwhite w-80 h-72 relative flex flex-col items-center justify-center gap-2 text-center hover:shadow-2xl hover:pb-10 hover:shadow-black hover:shadow-opacity-10 rounded-2xl border border-gray border-opacity-20 overflow-hidden hover:scale-105 px-2 duration-300">
                    <!-- circle -->
                    <div class="w-28 h-28 mt-8 rounded-full bg-transparent z-10 transition-all duration-500">
                      <img src="{{ asset('images/categories/' . $filter->id . '.png') }}" class="w-full rounded-full mx-auto" alt="{{ $filter->name }} icon">
                    </div>
                    <div class="block z-10 px-0 transition-all duration-500">
                      <h1 id="{{ $filter->id }}" class="text-2xl font-semibold">{{ $filter->name }}</h1>
                      <h1 id="{{ $filter->id }}Text" class="hidden">{{ $filter->descriptions }}</h1>
                      <button id="{{ $filter->id }}" class="openModalBtn block w-32 h-0 group-hover:h-10 text-transparent bg-blue group-hover:text-white rounded-md mt-4 duration-300 mx-auto">
                        Learn More
                      </button>
                    </div>
                  </div>
                <!-- card end -->
              @endforeach
              
              </div>
        </div>
</body>
<script>
    // MODAL SCRIPT
    // Get modal and buttons
    const modal = document.getElementById('modal');
    const openModalBtns = document.querySelectorAll('.openModalBtn');
    const modalImg = document.getElementById('modalImg');
    const closeModalBtn = document.getElementById('closeModalBtn');
    const nav = document.getElementById('nav');

    // Open modal when any button with the 'openModalBtn' class is clicked
    openModalBtns.forEach(btn => {
      btn.addEventListener('click', () => {
        modal.classList.remove('hidden');
        nav.classList.add('hidden');
        modalImg.src = `{{ asset('images/categories/${btn.id}.png') }}`;
        var title = document.getElementById(`${btn.id}`); 
        var content = document.getElementById(`${btn.id}Text`); 
        modalContTitle.innerHTML = title.innerHTML;
        modalContText.innerHTML = content.innerHTML;
      });
    });

    // Close modal when the close button is clicked
    closeModalBtn.addEventListener('click', () => {
      modal.classList.add('hidden');
      nav.classList.remove('hidden');
    });

    // Optional: Close modal if clicked outside the modal content
    modal.addEventListener('click', (e) => {
      if (e.target === modal) {
        modal.classList.add('hidden');
        nav.classList.remove('hidden');
      }
    });
</script>