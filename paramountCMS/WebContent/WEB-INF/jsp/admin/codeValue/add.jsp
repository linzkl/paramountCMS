<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<section>
	<form method="post" action="<c:url value="/codeValue/postAdd.do"/>">
		<div class="field half first">
			<label for="codeGroup">Code Group:*</label>
			<input type="text" id="codeGroup" name="codeGroup" required/>
		</div>
		<div class="field half">
			<label for="code">Code:*</label>
			<input type="text" id="code" name="code" required/>
		</div>
		<div class="field">
			<label for="sequence">Seq:</label>
			<input type="text" id="sequence" name="sequence" digit="true"/>
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
			<input type="text" class="isDate" id="effectiveDateTime" name="effectiveDateTime" date="true"/>
		</div>
		<div class="field half">
			<label for="effectiveThruDateTime">Effective Thru Date:</label>
			<input type="text" class="isDate" id="effectiveThruDateTime" name="effectiveThruDateTime" date="true"/>
		</div>
		<ul class="actions">
			<li><input type="submit" value="Add" class="special" /></li>
			<li><input type="button" id="cancel" value="Cancel" class="special"/></li>
		</ul>
	</form>
</section>
<script>
(function($){
	$(document).ready(function() {
		$(".isDate").datepicker();
		$( "#cancel" ).click(function() {
			window.location.href='<c:url value="/codeValue/getList.do"/>';
		});
	} );
})(jQuery); 
</script>