@include('partials.head')

@include('partials.nav')

<div class="flex flex-col gap-y-12 w-full my-12 p-4">
    <div class="m-auto flex flex-col w-3/4 min-w-[36rem] h-3/4 bg-notwhite rounded-lg p-4 border border-gray border-opacity-20 shadow-xl">
        <h1 class="text-3xl font-semibold ml-4">Admission Requests</h1>
        <table class="table-auto w-full">
            <thead>
                <tr>
                    <th class="w-1/4 px-4 py-2">Name</th>
                    <th class="w-1/4 px-4 py-2">Email</th>
                    <th class="w-1/4 px-4 py-2">Email Verified At</th>
                    <th class="w-1/4 px-4 py-2">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($requests as $user)
                    <tr>
                        <td class="text-center border px-4 py-2">{{ $user->name }}</td>
                        <td class="text-center border px-4 py-2">{{ $user->email }}</td>
                        <td class="text-center border px-4 py-2">{{ $user->email_verified_at }}</td>
                        <td class="text-center border px-4 py-2">
                            <div class="flex flex-wrap">
                                <form action="{{ route('users.admit', $user->id) }}" method="POST" class="m-auto">
                                    @csrf
                                    @method('PUT')
                                    <button class="mx-auto border bg-green-200 border-gray px-4 rounded-md">Admit</button>
                                </form>
                                <form action="{{ route('users.reject', $user->id) }}" method="POST" class="m-auto">
                                    @csrf
                                    @method('DELETE')
                                    <button class="mx-auto border bg-red-400 border-gray px-4 rounded-md">Reject</button>
                                </form>
                            </div>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>


    <div class="m-auto flex flex-col w-3/4 min-w-[36rem] h-3/4 bg-notwhite rounded-lg p-4 border border-gray border-opacity-20 shadow-xl">
        <h1 class="text-3xl font-semibold ml-4">Admitted Users</h1>
        <table class="table-auto w-full">
            <thead>
                <tr>
                    <th class="w-1/4 px-4 py-2">Name</th>
                    <th class="w-1/4 px-4 py-2">Email</th>
                    <th class="w-1/4 px-4 py-2">Email Verified At</th>
                    <th class="w-1/4 px-4 py-2">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($users as $user)
                    <tr>
                        <td class="text-center border px-4 py-2">{{ $user->name }}</td>
                        <td class="text-center border px-4 py-2">{{ $user->email }}</td>
                        <td class="text-center border px-4 py-2">{{ $user->email_verified_at }}</td>
                        <td class="text-center border px-4 py-2">
                            <form action="{{ route('users.reject', $user->id) }}" method="POST" class="m-auto">
                                @csrf
                                @method('DELETE')
                                <button class="mx-auto border bg-red-400 border-gray px-4 rounded-md">Delete</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>


