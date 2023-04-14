{{/*
Helm labels
*/}}
{{- define "paradisApp.helmLabels" -}}
helm.sh/chart: {{ include "paraddisApp.chart" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "paradis.labels" -}}
{{- if .Values.commit -}}
version: "{{ .Values.version }}-{{ .Values.commit }}"
{{- else -}}
version: "{{ .Values.version }}"
{{- end }}
{{- end }}