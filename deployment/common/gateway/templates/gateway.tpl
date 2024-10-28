apiVersion: apps/v1
kind: Deployment
metadata:
  name: gateway-deployment
  labels:
    app: {{ .Values.appName }}
spec:
  replicas: {{ .Values.replicas }}
  selector:
    matchLabels:
      app: {{ .Values.appName }}
      env: {{ .Values.env }}
  template:
    metadata:
      labels:
        app: {{ .Values.appName }}
        env: {{ .Values.env }}
    spec:
      containers:
        - name: {{ .Values.appName }}
          image: gateway:{{ .Values.verison }}
          ports:
            - containerPort: 8080
