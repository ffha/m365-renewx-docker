FROM mcr.microsoft.com/dotnet/aspnet:3.1-alpine
RUN apk add unzip wget tini
WORKDIR /app
RUN wget https://pan.gladtbam.top/auto/%E8%BD%AF%E4%BB%B6/E5/Microsoft365_E5_Renew_X.zip
RUN unzip Microsoft365_E5_Renew_X.zip
ENV LANG=zh_CN.UTF-8
ENV TZ=Asia/Shanghai
EXPOSE 1066
RUN rm Microsoft365_E5_Renew_X.zip
RUN apk del unzip wget
ENTRYPOINT ["/sbin/tini", "--"]
CMD ["dotnet", "Microsoft365_E5_Renew_X.dll"]
