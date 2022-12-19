from fastapi import FastAPI
from pydantic import BaseModel


def fahrenheit(x):
    return x * 33.8

class User_Input(BaseModel):
    x : float
    y : float



app = FastAPI()


@app.post("/fahrenheit")
def calc(input:User_Input):
    result = fahrenheit(input.x)
    return result