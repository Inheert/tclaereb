from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def root():
    return {"Hello", "pretty"}

@app.get("/crazy-endpoint")
def crazy_function(useless_id: int, useless_str: str):
    return {"id": useless_id, "str": useless_str}, 200
