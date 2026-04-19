FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

COPY pefi.homepage.csproj ./
RUN dotnet restore

COPY . ./
RUN dotnet publish -c Release -o /app/publish

FROM nginx:1.27-alpine
COPY --from=build /app/publish/wwwroot /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080
