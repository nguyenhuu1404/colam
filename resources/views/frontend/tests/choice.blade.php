<table class="choice full mb-3">
	@foreach($answers as $key =>$value)

	<tr>
		<td>

            <div class="form-check form-check-inline {{($value['check'] == 1) ? 'check' : ''}}">
                <input class="form-check-input" type="radio" name="answers[{{$qestionId}}]" id="answers_{{$qestionId}}_{{$value['id']}}" value="{{$value['id']}}"/>
                <label class="form-check-label" for="answers_{{$qestionId}}_{{$value['id']}}">{!!$value['name']!!}</label>
            </div>
		</td>
	</tr>
	@endforeach
</table>
