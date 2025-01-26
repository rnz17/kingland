<div class="absolute sticky bottom-0 w-full bg-lightblue overflow-hidden whitespace-nowrap">
  <div class="animate-marquee flex text-2xl font-semibold inline-block w-full">
    @foreach($marq as $item)
        <h1 class="m-auto">{{ $item->content }}</h1>
    @endforeach
    <h1 class="m-auto">{{ $item->content }}</h1>
  </div>
</div>
