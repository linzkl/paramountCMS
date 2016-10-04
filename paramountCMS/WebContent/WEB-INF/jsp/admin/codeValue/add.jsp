<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<header>
	<h2>Add Code Value</h2>
</header>
<section>
	<form method="post" action="<c:url value="/codeValue/postAdd.do"/>">
		<div class="field half first">
			<label for="code">Code:*</label>
			<input type="text" id="code" name="code"/>
		</div>
		<div class="field half">
			<label for="codeGroup">Code Group:*</label>
			<input type="text" id="codeGroup" name="codeGroup"/>
		</div>
		<div class="field">
			<label for="sequence">Seq:</label>
			<input type="text" id="sequence" name="sequence"/>
		</div>
		<div class="field">
			<label for="shortDescription">Short Description:</label>
			<input type="text" id="shortDescription" name="shortDescription"/>
		</div>
		<div class="field">
			<label for="longDescription">Long Description:</label>
			<input type="text" id="longDescription" name="longDescription"/>
		</div>
		<div class="field half first">
			<label for="effectiveDateTime">Effective Date:</label>
			<input type="text" id="effectiveDateTime" name="effectiveDateTime"/>
		</div>
		<div class="field half">
			<label for="effectiveThruDateTime">Effective Thru Date:</label>
			<input type="text" id="effectiveThruDateTime" name="effectiveThruDateTime"/>
		</div>
		<ul class="actions">
			<li><input type="submit" value="Add" class="special" /></li>
		</ul>
	</form>
</section>