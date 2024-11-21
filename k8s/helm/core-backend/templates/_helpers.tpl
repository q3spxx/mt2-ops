{{- define "name" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 }}
{{- end }}

{{- define "keycloak.host" -}}
{{- printf "keycloak.%s" .Release.Name | trunc 63 }}
{{- end }}

{{- define "keycloak.realm" -}}
{{- .Release.Name | trunc 63 }}
{{- end }}

{{- define "postgresql.host" -}}
{{- printf "%s-%s" .Release.Name .Values.postgresql.nameOverride | trunc 63 }}
{{- end }}
