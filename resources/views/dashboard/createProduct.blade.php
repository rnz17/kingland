<x-app-layout>

<form method="post" action="{{ route('storeProduct') }}">
    @csrf
<div>
    <label for="code">Code</label>
    <input type="text" id="code" name="code" required>
</div>

<div>
    <label for="name">Name</label>
    <input type="text" id="name" name="name" required>
</div>

<div>
    <label for="supplier">Supplier</label>
    <input type="text" id="supplier" name="supplier">
</div>

<div>
    <label for="spec">Specification</label>
    <input type="text" id="spec" name="spec">
</div>

<div>
    <label for="unit">Unit</label>
    <input type="text" id="unit" name="unit" required >
</div>

<div>
    <label for="pcs_unit">Pieces per Unit</label>
    <input type="text" id="pcs_unit" name="pcs_unit">
</div>

<div>
    <label for="unit_price">Unit Price</label>
    <input type="text" id="unit_price" name="unit_price" required pattern="^\d+(\.\d{1,2})?$">
</div>

<div>
    <label for="value_ratio">Value Ratio</label>
    <input type="text" id="value_ratio" name="value_ratio">
</div>

<div>
    <label for="status">Status</label>
    <input type="text" id="status" name="status">
</div>

<div>
    <label for="available">Available</label>
    <input type="text" id="available" name="available">
</div>

<div>
    <label for="needed">Needed</label>
    <input type="text" id="needed" name="needed">
</div>

<div>
    <label for="to_buy">To Buy</label>
    <input type="text" id="to_buy" name="to_buy">
</div>

<div>
    <label for="low_alert">Low Alert</label>
    <input type="text" id="low_alert" name="low_alert">
</div>

<div>
    <label for="prod_note">Product Note</label>
    <input type="text" id="prod_note" name="prod_note">
</div>

<div>
    <button type="submit">Submit</button>
</div>
</form>

</x-app-layout>