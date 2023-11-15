FROM scratch as temp
COPY spin.toml /spin.toml
COPY app.wasm /app.wasm

FROM scratch
COPY --from=temp . .
ENTRYPOINT ["/spin.toml"]
