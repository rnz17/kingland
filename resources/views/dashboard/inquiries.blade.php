@include('partials.head')

@include('partials.nav')


<div class="flex flex-col gap-y-12 w-full pt-12">

    <!-- Cold -->
    <div class="m-auto w-3/4 text-md font-normal border border-gray border-opacity-20 p-12 rounded-xl shadow-xl bg-notwhite">
        <h1 class="text-xl font-bold mb-4">Cold Leads</h1>
        <!-- Table 1: Service and Categories -->
        <table class="min-w-full border-collapse border border-gray mb-2">
            <thead>
                <tr>
                    <th class="border border-gray text-center w-1/6">Name</th>
                    <th class="border border-gray text-center w-1/6">Emaill</th>
                    <th class="border border-gray text-center">Content</th>
                    <th class="border border-gray text-center w-1/6">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($cold as $row)
                    <tr class="text-center">
                        <td class="border border-gray">
                            <h1>{{ $row->name }}</h1>
                        </td>
                        <td class="border border-gray">
                            <a href="https://mail.google.com/mail/?view=cm&fs=1&to={{ $row->email }}" target="_blank"><h1 class="underline">{{ $row->email }}</h1></a>
                        </td>
                        <td class="border border-gray">
                            <h1>{{ $row->content }}</h1>
                        </td>
                        <td class="border border-gray">
                            <form action="{{ route('inquiries.update', $row->id) }}" method="POST" class="inline">
                                @csrf
                                @method('PUT')

                                <button class="m-auto my-1 rounded-sm border border-gray border-opacity-20 bg-lightblue px-2 w-3/4">Contacted</button>
                            </form>


                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <!-- Warm -->
    <div class="m-auto w-3/4 text-md font-normal border border-gray border-opacity-20 p-12 rounded-xl shadow-xl bg-notwhite">
        <h1 class="text-xl font-bold mb-4">Warm Leads</h1>
        <!-- Table 1: Service and Categories -->
        <table class="min-w-full border-collapse border border-gray mb-2">
            <thead>
                <tr>
                    <th class="border border-gray text-center w-1/3">Name</th>
                    <th class="border border-gray text-center w-1/3">Emaill</th>
                    <th class="border border-gray text-center w-1/3">Contacted at</th>
                </tr>
            </thead>
            <tbody>
                @foreach($warm as $row)
                    <tr class="text-center">
                        <td class="border border-gray">
                            <h1>{{ $row->name }}</h1>
                        </td>
                        <td class="border border-gray">
                            <a href="https://mail.google.com/mail/?view=cm&fs=1&to={{ $row->email }}" target="_blank"><h1 class="underline">{{ $row->email }}</h1></a>
                        </td>
                        <td class="border border-gray">
                            <h1>{{ $row->updated_at }}</h1>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>



</div>