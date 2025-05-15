<!-- resources/views/components/BlogCard.blade.php -->
<div class="card group pt-48 lg:pt-44 m-auto mt-0 hover:z-50">
  <a href="{{ route('blog.show', $blogId) }}" class="m-auto mt-0">
    <div class="m-auto flex flex-col w-5/6 md:w-5/12 lg:w-[18vw] h-auto min-h-[26rem] hover:scale-105 bg-notwhite border-2 border-gray border-opacity-20 shadow-sm group-hover:shadow-xl rounded-lg duration-300">
      <!-- image -->
      <div class="mx-auto relative h-auto w-full aspect-[2/1] transform flex justify-center items-center">
        <div class="flex absolute w-full lg:group-hover:w-[150%] aspect-video lg:aspect-square lg:group-hover:aspect-video bg-lightblue border-2 border-textblue rounded-lg lg:rounded-full bottom-0 lg:group-hover:rounded-lg overflow-hidden shadow-xl ease-out duration-300">
          <img src="{{ $imageUrl }}" class="w-full h-full object-cover"></img>
        </div>
      </div>

      <div class="flex flex-col w-full h-64 overflow-hidden p-2">
        <div class="flex h-1/3 lg:group-hover:h-full overflow-hidden mb-2 duration-300">
          <h2 class="m-auto font-bold text-lg text-blue underline">{{ $title }}</h2>
        </div>
        <div class="h-full overflow-hidden">
          <p class="m-auto text-gray-700 text-base">
            {!! $content !!}
          </p>
        </div>
      </div>
    </div>
  </a>
</div>