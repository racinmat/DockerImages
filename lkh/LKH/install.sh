#!/usr/bin/env bash

# Download and compile LKH Solver

wget http://www.akira.ruc.dk/~keld/research/LKH/LKH-2.0.7.tgz
tar xvfz LKH-2.0.7.tgz
cd LKH-2.0.7
make
