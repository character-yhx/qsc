# Quantum state classification via neural networks


In this code, we implement using three neural networks to solve the quantum state classification problem. The dataset preparation process is shown in the figure.

![Framework](C:\Users\Character\Desktop\NMI Paper\Experiments\pics\Framework.jpg)

# Three neural networks:
The three neural networks (i.e., MLP, QNN and QCNN) tested are shown in the figure.

![Method](C:\Users\Character\Desktop\NMI Paper\Experiments\pics\Method.jpg)

## Getting started

Create and activate the conda environment:

```
conda create -n {name_your_environment} python=3.x
conda activate {name_your_environment}
```

Then install the required packages:
```
pip install -r requirements.txt
```

## Run experiments:
First, generate the dataset, e.g.,
```
python 1_qubit_generate.py
```
Then, copy the generated dataset file to the corresponding method folder and run the corresponding code, e.g.,
```
python MLP.py
```
Final, use MATLAB to plot experimental results, e.g.,
```
qubit1_target2_binary.m
qubit1_target2_four.m
...
```
## Note:

Here, all numerical results of the paper are already included! Each method can be run directly!