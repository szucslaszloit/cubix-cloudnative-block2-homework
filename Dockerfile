# A Dockerfile a gyökérmappában van
# A base image használata
FROM quay.io/drsylent/cubix/block2/homework-base:java17

# A nevem címkézése a képen
LABEL cubix.homework.owner="Szucs Laci"

# A környezeti változók beállítása
ENV CUBIX_HOMEWORK="Szucs Laci"
ENV APP_DEFAULT_MESSAGE=""

# Az alkalmazás futtatásához szükséges fájlok másolása
# A mappanév argumentumként adható át a build parancsnál
ARG APP_DIR
COPY ${APP_DIR}/target/*.jar app.jar

# Az alkalmazás futtatása
ENTRYPOINT ["java","-jar","/app.jar"]