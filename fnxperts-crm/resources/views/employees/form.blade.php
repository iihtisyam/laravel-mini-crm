<div class="mb-4">
    <label class="block text-sm font-medium text-gray-700">First Name</label>
    <input type="text" name="first_name" value="{{ old('first_name', $employee->first_name ?? '') }}" required
        class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500">
</div>

<div class="mb-4">
    <label class="block text-sm font-medium text-gray-700">Last Name</label>
    <input type="text" name="last_name" value="{{ old('last_name', $employee->last_name ?? '') }}" required
        class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500">
</div>

<div class="mb-4">
    <label class="block text-sm font-medium text-gray-700">Company</label>
    <select name="company_id" required
        class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500">
        @foreach($companies as $company)
            <option value="{{ $company->id }}"
                {{ (old('company_id', $employee->company_id ?? '') == $company->id) ? 'selected' : '' }}>
                {{ $company->name }}
            </option>
        @endforeach
    </select>
</div>

<div class="mb-4">
    <label class="block text-sm font-medium text-gray-700">Email</label>
    <input type="email" name="email" value="{{ old('email', $employee->email ?? '') }}"
        class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500">
</div>

<div class="mb-4">
    <label class="block text-sm font-medium text-gray-700">Phone</label>
    <input type="text" name="phone" value="{{ old('phone', $employee->phone ?? '') }}"
        class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500">
</div>
