{{ $args := parseArgs 1 "" (carg "string" "Look up rule") }}
{{ $rules:= split ($args.Get 0) "," }}
{{ $rulebook := cslice "" }}
{{ range $index, $rule := $rules }}
{{$stored_rule := dbGet  0 $rule}}
{{if $stored_rule}}
{{$rulebook.Append $stored_rule.Value}}
{{end}}
{{end}}
{{$violations := $rulebook.StringSlice}}
{{joinStr "\r" $violations}}