��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.5.02v1.12.1-50543-g784012b11b68��
~
conv1d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv1d_1/kernel
w
#conv1d_1/kernel/Read/ReadVariableOpReadVariableOpconv1d_1/kernel*"
_output_shapes
:@*
dtype0
r
conv1d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv1d_1/bias
k
!conv1d_1/bias/Read/ReadVariableOpReadVariableOpconv1d_1/bias*
_output_shapes
:@*
dtype0
j
	BN1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	BN1/gamma
c
BN1/gamma/Read/ReadVariableOpReadVariableOp	BN1/gamma*
_output_shapes
:@*
dtype0
h
BN1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
BN1/beta
a
BN1/beta/Read/ReadVariableOpReadVariableOpBN1/beta*
_output_shapes
:@*
dtype0
v
BN1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameBN1/moving_mean
o
#BN1/moving_mean/Read/ReadVariableOpReadVariableOpBN1/moving_mean*
_output_shapes
:@*
dtype0
~
BN1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameBN1/moving_variance
w
'BN1/moving_variance/Read/ReadVariableOpReadVariableOpBN1/moving_variance*
_output_shapes
:@*
dtype0
~
conv1d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ * 
shared_nameconv1d_2/kernel
w
#conv1d_2/kernel/Read/ReadVariableOpReadVariableOpconv1d_2/kernel*"
_output_shapes
:@ *
dtype0
r
conv1d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1d_2/bias
k
!conv1d_2/bias/Read/ReadVariableOpReadVariableOpconv1d_2/bias*
_output_shapes
: *
dtype0
j
	BN2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	BN2/gamma
c
BN2/gamma/Read/ReadVariableOpReadVariableOp	BN2/gamma*
_output_shapes
: *
dtype0
h
BN2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
BN2/beta
a
BN2/beta/Read/ReadVariableOpReadVariableOpBN2/beta*
_output_shapes
: *
dtype0
v
BN2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameBN2/moving_mean
o
#BN2/moving_mean/Read/ReadVariableOpReadVariableOpBN2/moving_mean*
_output_shapes
: *
dtype0
~
BN2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameBN2/moving_variance
w
'BN2/moving_variance/Read/ReadVariableOpReadVariableOpBN2/moving_variance*
_output_shapes
: *
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

: *
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
j
	BN3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	BN3/gamma
c
BN3/gamma/Read/ReadVariableOpReadVariableOp	BN3/gamma*
_output_shapes
:*
dtype0
h
BN3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
BN3/beta
a
BN3/beta/Read/ReadVariableOpReadVariableOpBN3/beta*
_output_shapes
:*
dtype0
v
BN3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameBN3/moving_mean
o
#BN3/moving_mean/Read/ReadVariableOpReadVariableOpBN3/moving_mean*
_output_shapes
:*
dtype0
~
BN3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameBN3/moving_variance
w
'BN3/moving_variance/Read/ReadVariableOpReadVariableOpBN3/moving_variance*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0

NoOpNoOp
�8
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�7
value�7B�7 B�7
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
layer-13
trainable_variables
regularization_losses
	variables
	keras_api

signatures
 
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
�
axis
	gamma
 beta
!moving_mean
"moving_variance
#trainable_variables
$regularization_losses
%	variables
&	keras_api
h

'kernel
(bias
)trainable_variables
*regularization_losses
+	variables
,	keras_api
R
-trainable_variables
.regularization_losses
/	variables
0	keras_api
�
1axis
	2gamma
3beta
4moving_mean
5moving_variance
6trainable_variables
7regularization_losses
8	variables
9	keras_api
R
:trainable_variables
;regularization_losses
<	variables
=	keras_api
h

>kernel
?bias
@trainable_variables
Aregularization_losses
B	variables
C	keras_api
R
Dtrainable_variables
Eregularization_losses
F	variables
G	keras_api
�
Haxis
	Igamma
Jbeta
Kmoving_mean
Lmoving_variance
Mtrainable_variables
Nregularization_losses
O	variables
P	keras_api
h

Qkernel
Rbias
Strainable_variables
Tregularization_losses
U	variables
V	keras_api
h

Wkernel
Xbias
Ytrainable_variables
Zregularization_losses
[	variables
\	keras_api

]	keras_api
v
0
1
2
 3
'4
(5
26
37
>8
?9
I10
J11
Q12
R13
W14
X15
 
�
0
1
2
 3
!4
"5
'6
(7
28
39
410
511
>12
?13
I14
J15
K16
L17
Q18
R19
W20
X21
�
^layer_metrics
trainable_variables
_non_trainable_variables
`metrics
regularization_losses
	variables

alayers
blayer_regularization_losses
 
[Y
VARIABLE_VALUEconv1d_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
clayer_metrics
trainable_variables
dnon_trainable_variables
emetrics
regularization_losses
	variables

flayers
glayer_regularization_losses
 
 
 
�
hlayer_metrics
trainable_variables
inon_trainable_variables
jmetrics
regularization_losses
	variables

klayers
llayer_regularization_losses
 
TR
VARIABLE_VALUE	BN1/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEBN1/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEBN1/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEBN1/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
 1
 

0
 1
!2
"3
�
mlayer_metrics
#trainable_variables
nnon_trainable_variables
ometrics
$regularization_losses
%	variables

players
qlayer_regularization_losses
[Y
VARIABLE_VALUEconv1d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

'0
(1
 

'0
(1
�
rlayer_metrics
)trainable_variables
snon_trainable_variables
tmetrics
*regularization_losses
+	variables

ulayers
vlayer_regularization_losses
 
 
 
�
wlayer_metrics
-trainable_variables
xnon_trainable_variables
ymetrics
.regularization_losses
/	variables

zlayers
{layer_regularization_losses
 
TR
VARIABLE_VALUE	BN2/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEBN2/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEBN2/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEBN2/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

20
31
 

20
31
42
53
�
|layer_metrics
6trainable_variables
}non_trainable_variables
~metrics
7regularization_losses
8	variables

layers
 �layer_regularization_losses
 
 
 
�
�layer_metrics
:trainable_variables
�non_trainable_variables
�metrics
;regularization_losses
<	variables
�layers
 �layer_regularization_losses
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

>0
?1
 

>0
?1
�
�layer_metrics
@trainable_variables
�non_trainable_variables
�metrics
Aregularization_losses
B	variables
�layers
 �layer_regularization_losses
 
 
 
�
�layer_metrics
Dtrainable_variables
�non_trainable_variables
�metrics
Eregularization_losses
F	variables
�layers
 �layer_regularization_losses
 
TR
VARIABLE_VALUE	BN3/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEBN3/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEBN3/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEBN3/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

I0
J1
 

I0
J1
K2
L3
�
�layer_metrics
Mtrainable_variables
�non_trainable_variables
�metrics
Nregularization_losses
O	variables
�layers
 �layer_regularization_losses
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

Q0
R1
 

Q0
R1
�
�layer_metrics
Strainable_variables
�non_trainable_variables
�metrics
Tregularization_losses
U	variables
�layers
 �layer_regularization_losses
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

W0
X1
 

W0
X1
�
�layer_metrics
Ytrainable_variables
�non_trainable_variables
�metrics
Zregularization_losses
[	variables
�layers
 �layer_regularization_losses
 
 
*
!0
"1
42
53
K4
L5
 
f
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
 
 
 
 
 
 
 
 
 
 
 
 

!0
"1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

40
51
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

K0
L1
 
 
 
 
 
 
 
 
 
 
 
 
 
�
serving_default_input_1Placeholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv1d_1/kernelconv1d_1/biasBN1/moving_variance	BN1/gammaBN1/moving_meanBN1/betaconv1d_2/kernelconv1d_2/biasBN2/moving_variance	BN2/gammaBN2/moving_meanBN2/betadense/kernel
dense/biasBN3/moving_variance	BN3/gammaBN3/moving_meanBN3/betadense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference_signature_wrapper_8132
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv1d_1/kernel/Read/ReadVariableOp!conv1d_1/bias/Read/ReadVariableOpBN1/gamma/Read/ReadVariableOpBN1/beta/Read/ReadVariableOp#BN1/moving_mean/Read/ReadVariableOp'BN1/moving_variance/Read/ReadVariableOp#conv1d_2/kernel/Read/ReadVariableOp!conv1d_2/bias/Read/ReadVariableOpBN2/gamma/Read/ReadVariableOpBN2/beta/Read/ReadVariableOp#BN2/moving_mean/Read/ReadVariableOp'BN2/moving_variance/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpBN3/gamma/Read/ReadVariableOpBN3/beta/Read/ReadVariableOp#BN3/moving_mean/Read/ReadVariableOp'BN3/moving_variance/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpConst*#
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *&
f!R
__inference__traced_save_9115
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_1/kernelconv1d_1/bias	BN1/gammaBN1/betaBN1/moving_meanBN1/moving_varianceconv1d_2/kernelconv1d_2/bias	BN2/gammaBN2/betaBN2/moving_meanBN2/moving_variancedense/kernel
dense/bias	BN3/gammaBN3/betaBN3/moving_meanBN3/moving_variancedense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference__traced_restore_9191��
�
�
'__inference_conv1d_1_layer_call_fn_8588

inputs
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv1d_1_layer_call_and_return_conditional_losses_71752
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�h
�	
A__inference_encoder_layer_call_and_return_conditional_losses_7770
input_1#
conv1d_1_7682:@
conv1d_1_7684:@
bn1_7688:@
bn1_7690:@
bn1_7692:@
bn1_7694:@#
conv1d_2_7697:@ 
conv1d_2_7699: 
bn2_7703: 
bn2_7705: 
bn2_7707: 
bn2_7709: 

dense_7713: 

dense_7715:
bn3_7719:
bn3_7721:
bn3_7723:
bn3_7725:
dense_1_7728:
dense_1_7730:
dense_2_7733:
dense_2_7735:
identity��BN1/StatefulPartitionedCall�BN2/StatefulPartitionedCall�BN3/StatefulPartitionedCall� conv1d_1/StatefulPartitionedCall�.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp�1conv1d_1/kernel/Regularizer/Square/ReadVariableOp� conv1d_2/StatefulPartitionedCall�.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp�1conv1d_2/kernel/Regularizer/Square/ReadVariableOp�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCallinput_1conv1d_1_7682conv1d_1_7684*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv1d_1_layer_call_and_return_conditional_losses_71752"
 conv1d_1/StatefulPartitionedCall�
activation_1/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_71962
activation_1/PartitionedCall�
BN1/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0bn1_7688bn1_7690bn1_7692bn1_7694*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *F
fAR?
=__inference_BN1_layer_call_and_return_conditional_losses_72602
BN1/StatefulPartitionedCall�
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall$BN1/StatefulPartitionedCall:output:0conv1d_2_7697conv1d_2_7699*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv1d_2_layer_call_and_return_conditional_losses_73272"
 conv1d_2/StatefulPartitionedCall�
activation_2/PartitionedCallPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_activation_2_layer_call_and_return_conditional_losses_73482
activation_2/PartitionedCall�
BN2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0bn2_7703bn2_7705bn2_7707bn2_7709*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *F
fAR?
=__inference_BN2_layer_call_and_return_conditional_losses_74122
BN2/StatefulPartitionedCall�
flatten/PartitionedCallPartitionedCall$BN2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_74552
flatten/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_7713
dense_7715*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_74732
dense/StatefulPartitionedCall�
activation_3/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_activation_3_layer_call_and_return_conditional_losses_74942
activation_3/PartitionedCall�
BN3/StatefulPartitionedCallStatefulPartitionedCall%activation_3/PartitionedCall:output:0bn3_7719bn3_7721bn3_7723bn3_7725*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *F
fAR?
=__inference_BN3_layer_call_and_return_conditional_losses_75582
BN3/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall$BN3/StatefulPartitionedCall:output:0dense_1_7728dense_1_7730*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_76052!
dense_1/StatefulPartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_7733dense_2_7735*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_76312!
dense_2/StatefulPartitionedCall�
tf.math.tanh/TanhTanh(dense_2/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������2
tf.math.tanh/Tanh�
!conv1d_1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv1d_1/kernel/Regularizer/Const�
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv1d_1_7682*"
_output_shapes
:@*
dtype020
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp�
conv1d_1/kernel/Regularizer/AbsAbs6conv1d_1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2!
conv1d_1/kernel/Regularizer/Abs�
#conv1d_1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_1/kernel/Regularizer/Const_1�
conv1d_1/kernel/Regularizer/SumSum#conv1d_1/kernel/Regularizer/Abs:y:0,conv1d_1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/Sum�
!conv1d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2#
!conv1d_1/kernel/Regularizer/mul/x�
conv1d_1/kernel/Regularizer/mulMul*conv1d_1/kernel/Regularizer/mul/x:output:0(conv1d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/mul�
conv1d_1/kernel/Regularizer/addAddV2*conv1d_1/kernel/Regularizer/Const:output:0#conv1d_1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/add�
1conv1d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_1_7682*"
_output_shapes
:@*
dtype023
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_1/kernel/Regularizer/SquareSquare9conv1d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2$
"conv1d_1/kernel/Regularizer/Square�
#conv1d_1/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_1/kernel/Regularizer/Const_2�
!conv1d_1/kernel/Regularizer/Sum_1Sum&conv1d_1/kernel/Regularizer/Square:y:0,conv1d_1/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/Sum_1�
#conv1d_1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2%
#conv1d_1/kernel/Regularizer/mul_1/x�
!conv1d_1/kernel/Regularizer/mul_1Mul,conv1d_1/kernel/Regularizer/mul_1/x:output:0*conv1d_1/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/mul_1�
!conv1d_1/kernel/Regularizer/add_1AddV2#conv1d_1/kernel/Regularizer/add:z:0%conv1d_1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/add_1�
!conv1d_2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv1d_2/kernel/Regularizer/Const�
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv1d_2_7697*"
_output_shapes
:@ *
dtype020
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp�
conv1d_2/kernel/Regularizer/AbsAbs6conv1d_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2!
conv1d_2/kernel/Regularizer/Abs�
#conv1d_2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_2/kernel/Regularizer/Const_1�
conv1d_2/kernel/Regularizer/SumSum#conv1d_2/kernel/Regularizer/Abs:y:0,conv1d_2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/Sum�
!conv1d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2#
!conv1d_2/kernel/Regularizer/mul/x�
conv1d_2/kernel/Regularizer/mulMul*conv1d_2/kernel/Regularizer/mul/x:output:0(conv1d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/mul�
conv1d_2/kernel/Regularizer/addAddV2*conv1d_2/kernel/Regularizer/Const:output:0#conv1d_2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/add�
1conv1d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_2_7697*"
_output_shapes
:@ *
dtype023
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_2/kernel/Regularizer/SquareSquare9conv1d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2$
"conv1d_2/kernel/Regularizer/Square�
#conv1d_2/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_2/kernel/Regularizer/Const_2�
!conv1d_2/kernel/Regularizer/Sum_1Sum&conv1d_2/kernel/Regularizer/Square:y:0,conv1d_2/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/Sum_1�
#conv1d_2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2%
#conv1d_2/kernel/Regularizer/mul_1/x�
!conv1d_2/kernel/Regularizer/mul_1Mul,conv1d_2/kernel/Regularizer/mul_1/x:output:0*conv1d_2/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/mul_1�
!conv1d_2/kernel/Regularizer/add_1AddV2#conv1d_2/kernel/Regularizer/add:z:0%conv1d_2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/add_1�
IdentityIdentitytf.math.tanh/Tanh:y:0^BN1/StatefulPartitionedCall^BN2/StatefulPartitionedCall^BN3/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall/^conv1d_1/kernel/Regularizer/Abs/ReadVariableOp2^conv1d_1/kernel/Regularizer/Square/ReadVariableOp!^conv1d_2/StatefulPartitionedCall/^conv1d_2/kernel/Regularizer/Abs/ReadVariableOp2^conv1d_2/kernel/Regularizer/Square/ReadVariableOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : 2:
BN1/StatefulPartitionedCallBN1/StatefulPartitionedCall2:
BN2/StatefulPartitionedCallBN2/StatefulPartitionedCall2:
BN3/StatefulPartitionedCallBN3/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2`
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp2f
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp1conv1d_1/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2`
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp2f
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp1conv1d_2/kernel/Regularizer/Square/ReadVariableOp2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:T P
+
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
"__inference_BN1_layer_call_fn_8667

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *F
fAR?
=__inference_BN1_layer_call_and_return_conditional_losses_72402
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�)
�
B__inference_conv1d_2_layer_call_and_return_conditional_losses_8725

inputsA
+conv1d_expanddims_1_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOp�.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp�1conv1d_2/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������@2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ 2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:��������� *
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� 2	
BiasAdd�
!conv1d_2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv1d_2/kernel/Regularizer/Const�
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype020
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp�
conv1d_2/kernel/Regularizer/AbsAbs6conv1d_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2!
conv1d_2/kernel/Regularizer/Abs�
#conv1d_2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_2/kernel/Regularizer/Const_1�
conv1d_2/kernel/Regularizer/SumSum#conv1d_2/kernel/Regularizer/Abs:y:0,conv1d_2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/Sum�
!conv1d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2#
!conv1d_2/kernel/Regularizer/mul/x�
conv1d_2/kernel/Regularizer/mulMul*conv1d_2/kernel/Regularizer/mul/x:output:0(conv1d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/mul�
conv1d_2/kernel/Regularizer/addAddV2*conv1d_2/kernel/Regularizer/Const:output:0#conv1d_2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/add�
1conv1d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype023
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_2/kernel/Regularizer/SquareSquare9conv1d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2$
"conv1d_2/kernel/Regularizer/Square�
#conv1d_2/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_2/kernel/Regularizer/Const_2�
!conv1d_2/kernel/Regularizer/Sum_1Sum&conv1d_2/kernel/Regularizer/Square:y:0,conv1d_2/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/Sum_1�
#conv1d_2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2%
#conv1d_2/kernel/Regularizer/mul_1/x�
!conv1d_2/kernel/Regularizer/mul_1Mul,conv1d_2/kernel/Regularizer/mul_1/x:output:0*conv1d_2/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/mul_1�
!conv1d_2/kernel/Regularizer/add_1AddV2#conv1d_2/kernel/Regularizer/add:z:0%conv1d_2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/add_1�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp/^conv1d_2/kernel/Regularizer/Abs/ReadVariableOp2^conv1d_2/kernel/Regularizer/Square/ReadVariableOp*
T0*+
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2`
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp2f
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp1conv1d_2/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
=__inference_BN1_layer_call_and_return_conditional_losses_7260

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOp�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
batchnorm/add/y�
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:���������@2
batchnorm/mul_1�
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1�
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2�
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2�
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:���������@2
batchnorm/add_1�
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
=__inference_BN2_layer_call_and_return_conditional_losses_8800

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOp�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
batchnorm/add/y�
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:��������� 2
batchnorm/mul_1�
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1�
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2�
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2�
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:��������� 2
batchnorm/add_1�
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
"__inference_BN2_layer_call_fn_8826

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *F
fAR?
=__inference_BN2_layer_call_and_return_conditional_losses_74122
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
"__inference_signature_wrapper_8132
input_1
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *(
f#R!
__inference__wrapped_model_71412
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:���������
!
_user_specified_name	input_1
�
]
A__inference_flatten_layer_call_and_return_conditional_losses_7455

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"����    2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:��������� 2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� :S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
G
+__inference_activation_3_layer_call_fn_8866

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_activation_3_layer_call_and_return_conditional_losses_74942
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
b
F__inference_activation_2_layer_call_and_return_conditional_losses_7348

inputs
identityR
ReluReluinputs*
T0*+
_output_shapes
:��������� 2
Reluj
IdentityIdentityRelu:activations:0*
T0*+
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� :S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�0
�
=__inference_BN3_layer_call_and_return_conditional_losses_8902

inputs"
assignmovingavg_8877:$
assignmovingavg_1_8883:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��#AssignMovingAvg/AssignSubVariableOp�AssignMovingAvg/ReadVariableOp�%AssignMovingAvg_1/AssignSubVariableOp� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOp�
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:2
moments/StopGradient�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������2
moments/SquaredDifference�
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/variance�
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze�
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1�
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignMovingAvg/8877*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
AssignMovingAvg/decay�
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_8877*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*'
_class
loc:@AssignMovingAvg/8877*
_output_shapes
:2
AssignMovingAvg/sub�
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*'
_class
loc:@AssignMovingAvg/8877*
_output_shapes
:2
AssignMovingAvg/mul�
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_8877AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignMovingAvg/8877*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp�
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg_1/8883*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
AssignMovingAvg_1/decay�
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_8883*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/8883*
_output_shapes
:2
AssignMovingAvg_1/sub�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/8883*
_output_shapes
:2
AssignMovingAvg_1/mul�
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_8883AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg_1/8883*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
batchnorm/add/y�
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������2
batchnorm/add_1�
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_encoder_layer_call_fn_8051
input_1
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_encoder_layer_call_and_return_conditional_losses_80042
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
__inference_loss_fn_0_9006M
7conv1d_1_kernel_regularizer_abs_readvariableop_resource:@
identity��.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp�1conv1d_1/kernel/Regularizer/Square/ReadVariableOp�
!conv1d_1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv1d_1/kernel/Regularizer/Const�
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp7conv1d_1_kernel_regularizer_abs_readvariableop_resource*"
_output_shapes
:@*
dtype020
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp�
conv1d_1/kernel/Regularizer/AbsAbs6conv1d_1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2!
conv1d_1/kernel/Regularizer/Abs�
#conv1d_1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_1/kernel/Regularizer/Const_1�
conv1d_1/kernel/Regularizer/SumSum#conv1d_1/kernel/Regularizer/Abs:y:0,conv1d_1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/Sum�
!conv1d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2#
!conv1d_1/kernel/Regularizer/mul/x�
conv1d_1/kernel/Regularizer/mulMul*conv1d_1/kernel/Regularizer/mul/x:output:0(conv1d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/mul�
conv1d_1/kernel/Regularizer/addAddV2*conv1d_1/kernel/Regularizer/Const:output:0#conv1d_1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/add�
1conv1d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp7conv1d_1_kernel_regularizer_abs_readvariableop_resource*"
_output_shapes
:@*
dtype023
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_1/kernel/Regularizer/SquareSquare9conv1d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2$
"conv1d_1/kernel/Regularizer/Square�
#conv1d_1/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_1/kernel/Regularizer/Const_2�
!conv1d_1/kernel/Regularizer/Sum_1Sum&conv1d_1/kernel/Regularizer/Square:y:0,conv1d_1/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/Sum_1�
#conv1d_1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2%
#conv1d_1/kernel/Regularizer/mul_1/x�
!conv1d_1/kernel/Regularizer/mul_1Mul,conv1d_1/kernel/Regularizer/mul_1/x:output:0*conv1d_1/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/mul_1�
!conv1d_1/kernel/Regularizer/add_1AddV2#conv1d_1/kernel/Regularizer/add:z:0%conv1d_1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/add_1�
IdentityIdentity%conv1d_1/kernel/Regularizer/add_1:z:0/^conv1d_1/kernel/Regularizer/Abs/ReadVariableOp2^conv1d_1/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp2f
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp1conv1d_1/kernel/Regularizer/Square/ReadVariableOp
�h
�	
A__inference_encoder_layer_call_and_return_conditional_losses_7864

inputs#
conv1d_1_7776:@
conv1d_1_7778:@
bn1_7782:@
bn1_7784:@
bn1_7786:@
bn1_7788:@#
conv1d_2_7791:@ 
conv1d_2_7793: 
bn2_7797: 
bn2_7799: 
bn2_7801: 
bn2_7803: 

dense_7807: 

dense_7809:
bn3_7813:
bn3_7815:
bn3_7817:
bn3_7819:
dense_1_7822:
dense_1_7824:
dense_2_7827:
dense_2_7829:
identity��BN1/StatefulPartitionedCall�BN2/StatefulPartitionedCall�BN3/StatefulPartitionedCall� conv1d_1/StatefulPartitionedCall�.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp�1conv1d_1/kernel/Regularizer/Square/ReadVariableOp� conv1d_2/StatefulPartitionedCall�.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp�1conv1d_2/kernel/Regularizer/Square/ReadVariableOp�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_1_7776conv1d_1_7778*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv1d_1_layer_call_and_return_conditional_losses_71752"
 conv1d_1/StatefulPartitionedCall�
activation_1/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_71962
activation_1/PartitionedCall�
BN1/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0bn1_7782bn1_7784bn1_7786bn1_7788*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *F
fAR?
=__inference_BN1_layer_call_and_return_conditional_losses_72402
BN1/StatefulPartitionedCall�
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall$BN1/StatefulPartitionedCall:output:0conv1d_2_7791conv1d_2_7793*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv1d_2_layer_call_and_return_conditional_losses_73272"
 conv1d_2/StatefulPartitionedCall�
activation_2/PartitionedCallPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_activation_2_layer_call_and_return_conditional_losses_73482
activation_2/PartitionedCall�
BN2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0bn2_7797bn2_7799bn2_7801bn2_7803*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *F
fAR?
=__inference_BN2_layer_call_and_return_conditional_losses_73922
BN2/StatefulPartitionedCall�
flatten/PartitionedCallPartitionedCall$BN2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_74552
flatten/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_7807
dense_7809*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_74732
dense/StatefulPartitionedCall�
activation_3/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_activation_3_layer_call_and_return_conditional_losses_74942
activation_3/PartitionedCall�
BN3/StatefulPartitionedCallStatefulPartitionedCall%activation_3/PartitionedCall:output:0bn3_7813bn3_7815bn3_7817bn3_7819*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *F
fAR?
=__inference_BN3_layer_call_and_return_conditional_losses_75382
BN3/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall$BN3/StatefulPartitionedCall:output:0dense_1_7822dense_1_7824*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_76052!
dense_1/StatefulPartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_7827dense_2_7829*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_76312!
dense_2/StatefulPartitionedCall�
tf.math.tanh/TanhTanh(dense_2/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������2
tf.math.tanh/Tanh�
!conv1d_1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv1d_1/kernel/Regularizer/Const�
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv1d_1_7776*"
_output_shapes
:@*
dtype020
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp�
conv1d_1/kernel/Regularizer/AbsAbs6conv1d_1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2!
conv1d_1/kernel/Regularizer/Abs�
#conv1d_1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_1/kernel/Regularizer/Const_1�
conv1d_1/kernel/Regularizer/SumSum#conv1d_1/kernel/Regularizer/Abs:y:0,conv1d_1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/Sum�
!conv1d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2#
!conv1d_1/kernel/Regularizer/mul/x�
conv1d_1/kernel/Regularizer/mulMul*conv1d_1/kernel/Regularizer/mul/x:output:0(conv1d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/mul�
conv1d_1/kernel/Regularizer/addAddV2*conv1d_1/kernel/Regularizer/Const:output:0#conv1d_1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/add�
1conv1d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_1_7776*"
_output_shapes
:@*
dtype023
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_1/kernel/Regularizer/SquareSquare9conv1d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2$
"conv1d_1/kernel/Regularizer/Square�
#conv1d_1/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_1/kernel/Regularizer/Const_2�
!conv1d_1/kernel/Regularizer/Sum_1Sum&conv1d_1/kernel/Regularizer/Square:y:0,conv1d_1/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/Sum_1�
#conv1d_1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2%
#conv1d_1/kernel/Regularizer/mul_1/x�
!conv1d_1/kernel/Regularizer/mul_1Mul,conv1d_1/kernel/Regularizer/mul_1/x:output:0*conv1d_1/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/mul_1�
!conv1d_1/kernel/Regularizer/add_1AddV2#conv1d_1/kernel/Regularizer/add:z:0%conv1d_1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/add_1�
!conv1d_2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv1d_2/kernel/Regularizer/Const�
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv1d_2_7791*"
_output_shapes
:@ *
dtype020
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp�
conv1d_2/kernel/Regularizer/AbsAbs6conv1d_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2!
conv1d_2/kernel/Regularizer/Abs�
#conv1d_2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_2/kernel/Regularizer/Const_1�
conv1d_2/kernel/Regularizer/SumSum#conv1d_2/kernel/Regularizer/Abs:y:0,conv1d_2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/Sum�
!conv1d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2#
!conv1d_2/kernel/Regularizer/mul/x�
conv1d_2/kernel/Regularizer/mulMul*conv1d_2/kernel/Regularizer/mul/x:output:0(conv1d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/mul�
conv1d_2/kernel/Regularizer/addAddV2*conv1d_2/kernel/Regularizer/Const:output:0#conv1d_2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/add�
1conv1d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_2_7791*"
_output_shapes
:@ *
dtype023
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_2/kernel/Regularizer/SquareSquare9conv1d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2$
"conv1d_2/kernel/Regularizer/Square�
#conv1d_2/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_2/kernel/Regularizer/Const_2�
!conv1d_2/kernel/Regularizer/Sum_1Sum&conv1d_2/kernel/Regularizer/Square:y:0,conv1d_2/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/Sum_1�
#conv1d_2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2%
#conv1d_2/kernel/Regularizer/mul_1/x�
!conv1d_2/kernel/Regularizer/mul_1Mul,conv1d_2/kernel/Regularizer/mul_1/x:output:0*conv1d_2/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/mul_1�
!conv1d_2/kernel/Regularizer/add_1AddV2#conv1d_2/kernel/Regularizer/add:z:0%conv1d_2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/add_1�
IdentityIdentitytf.math.tanh/Tanh:y:0^BN1/StatefulPartitionedCall^BN2/StatefulPartitionedCall^BN3/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall/^conv1d_1/kernel/Regularizer/Abs/ReadVariableOp2^conv1d_1/kernel/Regularizer/Square/ReadVariableOp!^conv1d_2/StatefulPartitionedCall/^conv1d_2/kernel/Regularizer/Abs/ReadVariableOp2^conv1d_2/kernel/Regularizer/Square/ReadVariableOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : 2:
BN1/StatefulPartitionedCallBN1/StatefulPartitionedCall2:
BN2/StatefulPartitionedCallBN2/StatefulPartitionedCall2:
BN3/StatefulPartitionedCallBN3/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2`
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp2f
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp1conv1d_1/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2`
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp2f
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp1conv1d_2/kernel/Regularizer/Square/ReadVariableOp2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_encoder_layer_call_fn_7911
input_1
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_encoder_layer_call_and_return_conditional_losses_78642
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:���������
!
_user_specified_name	input_1
�
G
+__inference_activation_2_layer_call_fn_8744

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_activation_2_layer_call_and_return_conditional_losses_73482
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� :S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�	
�
A__inference_dense_1_layer_call_and_return_conditional_losses_8958

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�0
�
=__inference_BN2_layer_call_and_return_conditional_losses_7392

inputs"
assignmovingavg_7367: $
assignmovingavg_1_7373: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity��#AssignMovingAvg/AssignSubVariableOp�AssignMovingAvg/ReadVariableOp�%AssignMovingAvg_1/AssignSubVariableOp� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOp�
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/mean�
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: 2
moments/StopGradient�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:��������� 2
moments/SquaredDifference�
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/variance�
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze�
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1�
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignMovingAvg/7367*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
AssignMovingAvg/decay�
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_7367*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOp�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*'
_class
loc:@AssignMovingAvg/7367*
_output_shapes
: 2
AssignMovingAvg/sub�
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*'
_class
loc:@AssignMovingAvg/7367*
_output_shapes
: 2
AssignMovingAvg/mul�
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_7367AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignMovingAvg/7367*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp�
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg_1/7373*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
AssignMovingAvg_1/decay�
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_7373*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOp�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/7373*
_output_shapes
: 2
AssignMovingAvg_1/sub�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/7373*
_output_shapes
: 2
AssignMovingAvg_1/mul�
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_7373AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg_1/7373*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
batchnorm/add/y�
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:��������� 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:��������� 2
batchnorm/add_1�
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : : : 2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
"__inference_BN3_layer_call_fn_8935

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *F
fAR?
=__inference_BN3_layer_call_and_return_conditional_losses_75382
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
b
F__inference_activation_3_layer_call_and_return_conditional_losses_7494

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:���������2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
'__inference_conv1d_2_layer_call_fn_8734

inputs
unknown:@ 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv1d_2_layer_call_and_return_conditional_losses_73272
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
=__inference_BN2_layer_call_and_return_conditional_losses_7412

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOp�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
batchnorm/add/y�
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:��������� 2
batchnorm/mul_1�
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1�
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2�
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2�
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:��������� 2
batchnorm/add_1�
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�0
�
=__inference_BN1_layer_call_and_return_conditional_losses_8634

inputs"
assignmovingavg_8609:@$
assignmovingavg_1_8615:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity��#AssignMovingAvg/AssignSubVariableOp�AssignMovingAvg/ReadVariableOp�%AssignMovingAvg_1/AssignSubVariableOp� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOp�
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:@*
	keep_dims(2
moments/mean�
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:@2
moments/StopGradient�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:���������@2
moments/SquaredDifference�
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:@*
	keep_dims(2
moments/variance�
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze�
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1�
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignMovingAvg/8609*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
AssignMovingAvg/decay�
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_8609*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*'
_class
loc:@AssignMovingAvg/8609*
_output_shapes
:@2
AssignMovingAvg/sub�
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*'
_class
loc:@AssignMovingAvg/8609*
_output_shapes
:@2
AssignMovingAvg/mul�
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_8609AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignMovingAvg/8609*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp�
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg_1/8615*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
AssignMovingAvg_1/decay�
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_8615*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/8615*
_output_shapes
:@2
AssignMovingAvg_1/sub�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/8615*
_output_shapes
:@2
AssignMovingAvg_1/mul�
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_8615AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg_1/8615*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
batchnorm/add/y�
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:���������@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:���������@2
batchnorm/add_1�
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : : : 2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
b
F__inference_activation_1_layer_call_and_return_conditional_losses_8593

inputs
identityR
ReluReluinputs*
T0*+
_output_shapes
:���������@2
Reluj
IdentityIdentityRelu:activations:0*
T0*+
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
=__inference_BN3_layer_call_and_return_conditional_losses_7558

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOp�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
batchnorm/add/y�
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������2
batchnorm/mul_1�
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1�
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2�
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2�
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������2
batchnorm/add_1�
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_encoder_layer_call_fn_8485

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_encoder_layer_call_and_return_conditional_losses_78642
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�0
�
=__inference_BN2_layer_call_and_return_conditional_losses_8780

inputs"
assignmovingavg_8755: $
assignmovingavg_1_8761: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity��#AssignMovingAvg/AssignSubVariableOp�AssignMovingAvg/ReadVariableOp�%AssignMovingAvg_1/AssignSubVariableOp� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOp�
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/mean�
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: 2
moments/StopGradient�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:��������� 2
moments/SquaredDifference�
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/variance�
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze�
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1�
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignMovingAvg/8755*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
AssignMovingAvg/decay�
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_8755*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOp�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*'
_class
loc:@AssignMovingAvg/8755*
_output_shapes
: 2
AssignMovingAvg/sub�
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*'
_class
loc:@AssignMovingAvg/8755*
_output_shapes
: 2
AssignMovingAvg/mul�
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_8755AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignMovingAvg/8755*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp�
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg_1/8761*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
AssignMovingAvg_1/decay�
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_8761*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOp�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/8761*
_output_shapes
: 2
AssignMovingAvg_1/sub�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/8761*
_output_shapes
: 2
AssignMovingAvg_1/mul�
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_8761AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg_1/8761*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
batchnorm/add/y�
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:��������� 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:��������� 2
batchnorm/add_1�
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : : : 2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
"__inference_BN1_layer_call_fn_8680

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *F
fAR?
=__inference_BN1_layer_call_and_return_conditional_losses_72602
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
]
A__inference_flatten_layer_call_and_return_conditional_losses_8832

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"����    2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:��������� 2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� :S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�)
�
B__inference_conv1d_2_layer_call_and_return_conditional_losses_7327

inputsA
+conv1d_expanddims_1_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOp�.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp�1conv1d_2/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������@2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ 2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:��������� *
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� 2	
BiasAdd�
!conv1d_2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv1d_2/kernel/Regularizer/Const�
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype020
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp�
conv1d_2/kernel/Regularizer/AbsAbs6conv1d_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2!
conv1d_2/kernel/Regularizer/Abs�
#conv1d_2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_2/kernel/Regularizer/Const_1�
conv1d_2/kernel/Regularizer/SumSum#conv1d_2/kernel/Regularizer/Abs:y:0,conv1d_2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/Sum�
!conv1d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2#
!conv1d_2/kernel/Regularizer/mul/x�
conv1d_2/kernel/Regularizer/mulMul*conv1d_2/kernel/Regularizer/mul/x:output:0(conv1d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/mul�
conv1d_2/kernel/Regularizer/addAddV2*conv1d_2/kernel/Regularizer/Const:output:0#conv1d_2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/add�
1conv1d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype023
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_2/kernel/Regularizer/SquareSquare9conv1d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2$
"conv1d_2/kernel/Regularizer/Square�
#conv1d_2/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_2/kernel/Regularizer/Const_2�
!conv1d_2/kernel/Regularizer/Sum_1Sum&conv1d_2/kernel/Regularizer/Square:y:0,conv1d_2/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/Sum_1�
#conv1d_2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2%
#conv1d_2/kernel/Regularizer/mul_1/x�
!conv1d_2/kernel/Regularizer/mul_1Mul,conv1d_2/kernel/Regularizer/mul_1/x:output:0*conv1d_2/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/mul_1�
!conv1d_2/kernel/Regularizer/add_1AddV2#conv1d_2/kernel/Regularizer/add:z:0%conv1d_2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/add_1�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp/^conv1d_2/kernel/Regularizer/Abs/ReadVariableOp2^conv1d_2/kernel/Regularizer/Square/ReadVariableOp*
T0*+
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2`
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp2f
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp1conv1d_2/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
b
F__inference_activation_3_layer_call_and_return_conditional_losses_8861

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:���������2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_1_9026M
7conv1d_2_kernel_regularizer_abs_readvariableop_resource:@ 
identity��.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp�1conv1d_2/kernel/Regularizer/Square/ReadVariableOp�
!conv1d_2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv1d_2/kernel/Regularizer/Const�
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp7conv1d_2_kernel_regularizer_abs_readvariableop_resource*"
_output_shapes
:@ *
dtype020
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp�
conv1d_2/kernel/Regularizer/AbsAbs6conv1d_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2!
conv1d_2/kernel/Regularizer/Abs�
#conv1d_2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_2/kernel/Regularizer/Const_1�
conv1d_2/kernel/Regularizer/SumSum#conv1d_2/kernel/Regularizer/Abs:y:0,conv1d_2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/Sum�
!conv1d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2#
!conv1d_2/kernel/Regularizer/mul/x�
conv1d_2/kernel/Regularizer/mulMul*conv1d_2/kernel/Regularizer/mul/x:output:0(conv1d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/mul�
conv1d_2/kernel/Regularizer/addAddV2*conv1d_2/kernel/Regularizer/Const:output:0#conv1d_2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/add�
1conv1d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp7conv1d_2_kernel_regularizer_abs_readvariableop_resource*"
_output_shapes
:@ *
dtype023
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_2/kernel/Regularizer/SquareSquare9conv1d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2$
"conv1d_2/kernel/Regularizer/Square�
#conv1d_2/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_2/kernel/Regularizer/Const_2�
!conv1d_2/kernel/Regularizer/Sum_1Sum&conv1d_2/kernel/Regularizer/Square:y:0,conv1d_2/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/Sum_1�
#conv1d_2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2%
#conv1d_2/kernel/Regularizer/mul_1/x�
!conv1d_2/kernel/Regularizer/mul_1Mul,conv1d_2/kernel/Regularizer/mul_1/x:output:0*conv1d_2/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/mul_1�
!conv1d_2/kernel/Regularizer/add_1AddV2#conv1d_2/kernel/Regularizer/add:z:0%conv1d_2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/add_1�
IdentityIdentity%conv1d_2/kernel/Regularizer/add_1:z:0/^conv1d_2/kernel/Regularizer/Abs/ReadVariableOp2^conv1d_2/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp2f
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp1conv1d_2/kernel/Regularizer/Square/ReadVariableOp
�]
�
 __inference__traced_restore_9191
file_prefix6
 assignvariableop_conv1d_1_kernel:@.
 assignvariableop_1_conv1d_1_bias:@*
assignvariableop_2_bn1_gamma:@)
assignvariableop_3_bn1_beta:@0
"assignvariableop_4_bn1_moving_mean:@4
&assignvariableop_5_bn1_moving_variance:@8
"assignvariableop_6_conv1d_2_kernel:@ .
 assignvariableop_7_conv1d_2_bias: *
assignvariableop_8_bn2_gamma: )
assignvariableop_9_bn2_beta: 1
#assignvariableop_10_bn2_moving_mean: 5
'assignvariableop_11_bn2_moving_variance: 2
 assignvariableop_12_dense_kernel: ,
assignvariableop_13_dense_bias:+
assignvariableop_14_bn3_gamma:*
assignvariableop_15_bn3_beta:1
#assignvariableop_16_bn3_moving_mean:5
'assignvariableop_17_bn3_moving_variance:4
"assignvariableop_18_dense_1_kernel:.
 assignvariableop_19_dense_1_bias:4
"assignvariableop_20_dense_2_kernel:.
 assignvariableop_21_dense_2_bias:
identity_23��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�

value�
B�
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*p
_output_shapes^
\:::::::::::::::::::::::*%
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp assignvariableop_conv1d_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOpassignvariableop_2_bn1_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOpassignvariableop_3_bn1_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_bn1_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp&assignvariableop_5_bn1_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv1d_2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv1d_2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOpassignvariableop_8_bn2_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOpassignvariableop_9_bn2_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp#assignvariableop_10_bn2_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp'assignvariableop_11_bn2_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp assignvariableop_12_dense_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOpassignvariableop_13_dense_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpassignvariableop_14_bn3_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOpassignvariableop_15_bn3_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp#assignvariableop_16_bn3_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp'assignvariableop_17_bn3_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp"assignvariableop_18_dense_1_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp assignvariableop_19_dense_1_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp"assignvariableop_20_dense_2_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp assignvariableop_21_dense_2_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_219
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_22Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_22�
Identity_23IdentityIdentity_22:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_23"#
identity_23Identity_23:output:0*A
_input_shapes0
.: : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�0
�
=__inference_BN1_layer_call_and_return_conditional_losses_7240

inputs"
assignmovingavg_7215:@$
assignmovingavg_1_7221:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity��#AssignMovingAvg/AssignSubVariableOp�AssignMovingAvg/ReadVariableOp�%AssignMovingAvg_1/AssignSubVariableOp� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOp�
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:@*
	keep_dims(2
moments/mean�
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:@2
moments/StopGradient�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:���������@2
moments/SquaredDifference�
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:@*
	keep_dims(2
moments/variance�
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze�
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1�
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignMovingAvg/7215*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
AssignMovingAvg/decay�
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_7215*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*'
_class
loc:@AssignMovingAvg/7215*
_output_shapes
:@2
AssignMovingAvg/sub�
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*'
_class
loc:@AssignMovingAvg/7215*
_output_shapes
:@2
AssignMovingAvg/mul�
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_7215AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignMovingAvg/7215*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp�
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg_1/7221*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
AssignMovingAvg_1/decay�
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_7221*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/7221*
_output_shapes
:@2
AssignMovingAvg_1/sub�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/7221*
_output_shapes
:@2
AssignMovingAvg_1/mul�
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_7221AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg_1/7221*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
batchnorm/add/y�
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:���������@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:���������@2
batchnorm/add_1�
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : : : 2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
��
�
A__inference_encoder_layer_call_and_return_conditional_losses_8308

inputsJ
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:@6
(conv1d_1_biasadd_readvariableop_resource:@&
bn1_assignmovingavg_8155:@(
bn1_assignmovingavg_1_8161:@7
)bn1_batchnorm_mul_readvariableop_resource:@3
%bn1_batchnorm_readvariableop_resource:@J
4conv1d_2_conv1d_expanddims_1_readvariableop_resource:@ 6
(conv1d_2_biasadd_readvariableop_resource: &
bn2_assignmovingavg_8199: (
bn2_assignmovingavg_1_8205: 7
)bn2_batchnorm_mul_readvariableop_resource: 3
%bn2_batchnorm_readvariableop_resource: 6
$dense_matmul_readvariableop_resource: 3
%dense_biasadd_readvariableop_resource:&
bn3_assignmovingavg_8240:(
bn3_assignmovingavg_1_8246:7
)bn3_batchnorm_mul_readvariableop_resource:3
%bn3_batchnorm_readvariableop_resource:8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:8
&dense_2_matmul_readvariableop_resource:5
'dense_2_biasadd_readvariableop_resource:
identity��'BN1/AssignMovingAvg/AssignSubVariableOp�"BN1/AssignMovingAvg/ReadVariableOp�)BN1/AssignMovingAvg_1/AssignSubVariableOp�$BN1/AssignMovingAvg_1/ReadVariableOp�BN1/batchnorm/ReadVariableOp� BN1/batchnorm/mul/ReadVariableOp�'BN2/AssignMovingAvg/AssignSubVariableOp�"BN2/AssignMovingAvg/ReadVariableOp�)BN2/AssignMovingAvg_1/AssignSubVariableOp�$BN2/AssignMovingAvg_1/ReadVariableOp�BN2/batchnorm/ReadVariableOp� BN2/batchnorm/mul/ReadVariableOp�'BN3/AssignMovingAvg/AssignSubVariableOp�"BN3/AssignMovingAvg/ReadVariableOp�)BN3/AssignMovingAvg_1/AssignSubVariableOp�$BN3/AssignMovingAvg_1/ReadVariableOp�BN3/batchnorm/ReadVariableOp� BN3/batchnorm/mul/ReadVariableOp�conv1d_1/BiasAdd/ReadVariableOp�+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp�.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp�1conv1d_1/kernel/Regularizer/Square/ReadVariableOp�conv1d_2/BiasAdd/ReadVariableOp�+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp�.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp�1conv1d_2/kernel/Regularizer/Square/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�
conv1d_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
conv1d_1/conv1d/ExpandDims/dim�
conv1d_1/conv1d/ExpandDims
ExpandDimsinputs'conv1d_1/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������2
conv1d_1/conv1d/ExpandDims�
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype02-
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp�
 conv1d_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_1/conv1d/ExpandDims_1/dim�
conv1d_1/conv1d/ExpandDims_1
ExpandDims3conv1d_1/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@2
conv1d_1/conv1d/ExpandDims_1�
conv1d_1/conv1dConv2D#conv1d_1/conv1d/ExpandDims:output:0%conv1d_1/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
2
conv1d_1/conv1d�
conv1d_1/conv1d/SqueezeSqueezeconv1d_1/conv1d:output:0*
T0*+
_output_shapes
:���������@*
squeeze_dims

���������2
conv1d_1/conv1d/Squeeze�
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv1d_1/BiasAdd/ReadVariableOp�
conv1d_1/BiasAddBiasAdd conv1d_1/conv1d/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@2
conv1d_1/BiasAdd
activation_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*+
_output_shapes
:���������@2
activation_1/Relu�
"BN1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"BN1/moments/mean/reduction_indices�
BN1/moments/meanMeanactivation_1/Relu:activations:0+BN1/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:@*
	keep_dims(2
BN1/moments/mean�
BN1/moments/StopGradientStopGradientBN1/moments/mean:output:0*
T0*"
_output_shapes
:@2
BN1/moments/StopGradient�
BN1/moments/SquaredDifferenceSquaredDifferenceactivation_1/Relu:activations:0!BN1/moments/StopGradient:output:0*
T0*+
_output_shapes
:���������@2
BN1/moments/SquaredDifference�
&BN1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2(
&BN1/moments/variance/reduction_indices�
BN1/moments/varianceMean!BN1/moments/SquaredDifference:z:0/BN1/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:@*
	keep_dims(2
BN1/moments/variance�
BN1/moments/SqueezeSqueezeBN1/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
BN1/moments/Squeeze�
BN1/moments/Squeeze_1SqueezeBN1/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
BN1/moments/Squeeze_1�
BN1/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@BN1/AssignMovingAvg/8155*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
BN1/AssignMovingAvg/decay�
"BN1/AssignMovingAvg/ReadVariableOpReadVariableOpbn1_assignmovingavg_8155*
_output_shapes
:@*
dtype02$
"BN1/AssignMovingAvg/ReadVariableOp�
BN1/AssignMovingAvg/subSub*BN1/AssignMovingAvg/ReadVariableOp:value:0BN1/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@BN1/AssignMovingAvg/8155*
_output_shapes
:@2
BN1/AssignMovingAvg/sub�
BN1/AssignMovingAvg/mulMulBN1/AssignMovingAvg/sub:z:0"BN1/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@BN1/AssignMovingAvg/8155*
_output_shapes
:@2
BN1/AssignMovingAvg/mul�
'BN1/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpbn1_assignmovingavg_8155BN1/AssignMovingAvg/mul:z:0#^BN1/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@BN1/AssignMovingAvg/8155*
_output_shapes
 *
dtype02)
'BN1/AssignMovingAvg/AssignSubVariableOp�
BN1/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*-
_class#
!loc:@BN1/AssignMovingAvg_1/8161*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
BN1/AssignMovingAvg_1/decay�
$BN1/AssignMovingAvg_1/ReadVariableOpReadVariableOpbn1_assignmovingavg_1_8161*
_output_shapes
:@*
dtype02&
$BN1/AssignMovingAvg_1/ReadVariableOp�
BN1/AssignMovingAvg_1/subSub,BN1/AssignMovingAvg_1/ReadVariableOp:value:0BN1/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*-
_class#
!loc:@BN1/AssignMovingAvg_1/8161*
_output_shapes
:@2
BN1/AssignMovingAvg_1/sub�
BN1/AssignMovingAvg_1/mulMulBN1/AssignMovingAvg_1/sub:z:0$BN1/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*-
_class#
!loc:@BN1/AssignMovingAvg_1/8161*
_output_shapes
:@2
BN1/AssignMovingAvg_1/mul�
)BN1/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpbn1_assignmovingavg_1_8161BN1/AssignMovingAvg_1/mul:z:0%^BN1/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*-
_class#
!loc:@BN1/AssignMovingAvg_1/8161*
_output_shapes
 *
dtype02+
)BN1/AssignMovingAvg_1/AssignSubVariableOpo
BN1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
BN1/batchnorm/add/y�
BN1/batchnorm/addAddV2BN1/moments/Squeeze_1:output:0BN1/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
BN1/batchnorm/addo
BN1/batchnorm/RsqrtRsqrtBN1/batchnorm/add:z:0*
T0*
_output_shapes
:@2
BN1/batchnorm/Rsqrt�
 BN1/batchnorm/mul/ReadVariableOpReadVariableOp)bn1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02"
 BN1/batchnorm/mul/ReadVariableOp�
BN1/batchnorm/mulMulBN1/batchnorm/Rsqrt:y:0(BN1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
BN1/batchnorm/mul�
BN1/batchnorm/mul_1Mulactivation_1/Relu:activations:0BN1/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������@2
BN1/batchnorm/mul_1�
BN1/batchnorm/mul_2MulBN1/moments/Squeeze:output:0BN1/batchnorm/mul:z:0*
T0*
_output_shapes
:@2
BN1/batchnorm/mul_2�
BN1/batchnorm/ReadVariableOpReadVariableOp%bn1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
BN1/batchnorm/ReadVariableOp�
BN1/batchnorm/subSub$BN1/batchnorm/ReadVariableOp:value:0BN1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
BN1/batchnorm/sub�
BN1/batchnorm/add_1AddV2BN1/batchnorm/mul_1:z:0BN1/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������@2
BN1/batchnorm/add_1�
conv1d_2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
conv1d_2/conv1d/ExpandDims/dim�
conv1d_2/conv1d/ExpandDims
ExpandDimsBN1/batchnorm/add_1:z:0'conv1d_2/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������@2
conv1d_2/conv1d/ExpandDims�
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype02-
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp�
 conv1d_2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_2/conv1d/ExpandDims_1/dim�
conv1d_2/conv1d/ExpandDims_1
ExpandDims3conv1d_2/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_2/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ 2
conv1d_2/conv1d/ExpandDims_1�
conv1d_2/conv1dConv2D#conv1d_2/conv1d/ExpandDims:output:0%conv1d_2/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
2
conv1d_2/conv1d�
conv1d_2/conv1d/SqueezeSqueezeconv1d_2/conv1d:output:0*
T0*+
_output_shapes
:��������� *
squeeze_dims

���������2
conv1d_2/conv1d/Squeeze�
conv1d_2/BiasAdd/ReadVariableOpReadVariableOp(conv1d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_2/BiasAdd/ReadVariableOp�
conv1d_2/BiasAddBiasAdd conv1d_2/conv1d/Squeeze:output:0'conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� 2
conv1d_2/BiasAdd
activation_2/ReluReluconv1d_2/BiasAdd:output:0*
T0*+
_output_shapes
:��������� 2
activation_2/Relu�
"BN2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"BN2/moments/mean/reduction_indices�
BN2/moments/meanMeanactivation_2/Relu:activations:0+BN2/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
BN2/moments/mean�
BN2/moments/StopGradientStopGradientBN2/moments/mean:output:0*
T0*"
_output_shapes
: 2
BN2/moments/StopGradient�
BN2/moments/SquaredDifferenceSquaredDifferenceactivation_2/Relu:activations:0!BN2/moments/StopGradient:output:0*
T0*+
_output_shapes
:��������� 2
BN2/moments/SquaredDifference�
&BN2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2(
&BN2/moments/variance/reduction_indices�
BN2/moments/varianceMean!BN2/moments/SquaredDifference:z:0/BN2/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
BN2/moments/variance�
BN2/moments/SqueezeSqueezeBN2/moments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
BN2/moments/Squeeze�
BN2/moments/Squeeze_1SqueezeBN2/moments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
BN2/moments/Squeeze_1�
BN2/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@BN2/AssignMovingAvg/8199*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
BN2/AssignMovingAvg/decay�
"BN2/AssignMovingAvg/ReadVariableOpReadVariableOpbn2_assignmovingavg_8199*
_output_shapes
: *
dtype02$
"BN2/AssignMovingAvg/ReadVariableOp�
BN2/AssignMovingAvg/subSub*BN2/AssignMovingAvg/ReadVariableOp:value:0BN2/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@BN2/AssignMovingAvg/8199*
_output_shapes
: 2
BN2/AssignMovingAvg/sub�
BN2/AssignMovingAvg/mulMulBN2/AssignMovingAvg/sub:z:0"BN2/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@BN2/AssignMovingAvg/8199*
_output_shapes
: 2
BN2/AssignMovingAvg/mul�
'BN2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpbn2_assignmovingavg_8199BN2/AssignMovingAvg/mul:z:0#^BN2/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@BN2/AssignMovingAvg/8199*
_output_shapes
 *
dtype02)
'BN2/AssignMovingAvg/AssignSubVariableOp�
BN2/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*-
_class#
!loc:@BN2/AssignMovingAvg_1/8205*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
BN2/AssignMovingAvg_1/decay�
$BN2/AssignMovingAvg_1/ReadVariableOpReadVariableOpbn2_assignmovingavg_1_8205*
_output_shapes
: *
dtype02&
$BN2/AssignMovingAvg_1/ReadVariableOp�
BN2/AssignMovingAvg_1/subSub,BN2/AssignMovingAvg_1/ReadVariableOp:value:0BN2/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*-
_class#
!loc:@BN2/AssignMovingAvg_1/8205*
_output_shapes
: 2
BN2/AssignMovingAvg_1/sub�
BN2/AssignMovingAvg_1/mulMulBN2/AssignMovingAvg_1/sub:z:0$BN2/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*-
_class#
!loc:@BN2/AssignMovingAvg_1/8205*
_output_shapes
: 2
BN2/AssignMovingAvg_1/mul�
)BN2/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpbn2_assignmovingavg_1_8205BN2/AssignMovingAvg_1/mul:z:0%^BN2/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*-
_class#
!loc:@BN2/AssignMovingAvg_1/8205*
_output_shapes
 *
dtype02+
)BN2/AssignMovingAvg_1/AssignSubVariableOpo
BN2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
BN2/batchnorm/add/y�
BN2/batchnorm/addAddV2BN2/moments/Squeeze_1:output:0BN2/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
BN2/batchnorm/addo
BN2/batchnorm/RsqrtRsqrtBN2/batchnorm/add:z:0*
T0*
_output_shapes
: 2
BN2/batchnorm/Rsqrt�
 BN2/batchnorm/mul/ReadVariableOpReadVariableOp)bn2_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02"
 BN2/batchnorm/mul/ReadVariableOp�
BN2/batchnorm/mulMulBN2/batchnorm/Rsqrt:y:0(BN2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
BN2/batchnorm/mul�
BN2/batchnorm/mul_1Mulactivation_2/Relu:activations:0BN2/batchnorm/mul:z:0*
T0*+
_output_shapes
:��������� 2
BN2/batchnorm/mul_1�
BN2/batchnorm/mul_2MulBN2/moments/Squeeze:output:0BN2/batchnorm/mul:z:0*
T0*
_output_shapes
: 2
BN2/batchnorm/mul_2�
BN2/batchnorm/ReadVariableOpReadVariableOp%bn2_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
BN2/batchnorm/ReadVariableOp�
BN2/batchnorm/subSub$BN2/batchnorm/ReadVariableOp:value:0BN2/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
BN2/batchnorm/sub�
BN2/batchnorm/add_1AddV2BN2/batchnorm/mul_1:z:0BN2/batchnorm/sub:z:0*
T0*+
_output_shapes
:��������� 2
BN2/batchnorm/add_1o
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����    2
flatten/Const�
flatten/ReshapeReshapeBN2/batchnorm/add_1:z:0flatten/Const:output:0*
T0*'
_output_shapes
:��������� 2
flatten/Reshape�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense/BiasAddx
activation_3/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
activation_3/Relu�
"BN3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"BN3/moments/mean/reduction_indices�
BN3/moments/meanMeanactivation_3/Relu:activations:0+BN3/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
BN3/moments/mean�
BN3/moments/StopGradientStopGradientBN3/moments/mean:output:0*
T0*
_output_shapes

:2
BN3/moments/StopGradient�
BN3/moments/SquaredDifferenceSquaredDifferenceactivation_3/Relu:activations:0!BN3/moments/StopGradient:output:0*
T0*'
_output_shapes
:���������2
BN3/moments/SquaredDifference�
&BN3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2(
&BN3/moments/variance/reduction_indices�
BN3/moments/varianceMean!BN3/moments/SquaredDifference:z:0/BN3/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
BN3/moments/variance�
BN3/moments/SqueezeSqueezeBN3/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
BN3/moments/Squeeze�
BN3/moments/Squeeze_1SqueezeBN3/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
BN3/moments/Squeeze_1�
BN3/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@BN3/AssignMovingAvg/8240*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
BN3/AssignMovingAvg/decay�
"BN3/AssignMovingAvg/ReadVariableOpReadVariableOpbn3_assignmovingavg_8240*
_output_shapes
:*
dtype02$
"BN3/AssignMovingAvg/ReadVariableOp�
BN3/AssignMovingAvg/subSub*BN3/AssignMovingAvg/ReadVariableOp:value:0BN3/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@BN3/AssignMovingAvg/8240*
_output_shapes
:2
BN3/AssignMovingAvg/sub�
BN3/AssignMovingAvg/mulMulBN3/AssignMovingAvg/sub:z:0"BN3/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@BN3/AssignMovingAvg/8240*
_output_shapes
:2
BN3/AssignMovingAvg/mul�
'BN3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpbn3_assignmovingavg_8240BN3/AssignMovingAvg/mul:z:0#^BN3/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@BN3/AssignMovingAvg/8240*
_output_shapes
 *
dtype02)
'BN3/AssignMovingAvg/AssignSubVariableOp�
BN3/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*-
_class#
!loc:@BN3/AssignMovingAvg_1/8246*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
BN3/AssignMovingAvg_1/decay�
$BN3/AssignMovingAvg_1/ReadVariableOpReadVariableOpbn3_assignmovingavg_1_8246*
_output_shapes
:*
dtype02&
$BN3/AssignMovingAvg_1/ReadVariableOp�
BN3/AssignMovingAvg_1/subSub,BN3/AssignMovingAvg_1/ReadVariableOp:value:0BN3/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*-
_class#
!loc:@BN3/AssignMovingAvg_1/8246*
_output_shapes
:2
BN3/AssignMovingAvg_1/sub�
BN3/AssignMovingAvg_1/mulMulBN3/AssignMovingAvg_1/sub:z:0$BN3/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*-
_class#
!loc:@BN3/AssignMovingAvg_1/8246*
_output_shapes
:2
BN3/AssignMovingAvg_1/mul�
)BN3/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpbn3_assignmovingavg_1_8246BN3/AssignMovingAvg_1/mul:z:0%^BN3/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*-
_class#
!loc:@BN3/AssignMovingAvg_1/8246*
_output_shapes
 *
dtype02+
)BN3/AssignMovingAvg_1/AssignSubVariableOpo
BN3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
BN3/batchnorm/add/y�
BN3/batchnorm/addAddV2BN3/moments/Squeeze_1:output:0BN3/batchnorm/add/y:output:0*
T0*
_output_shapes
:2
BN3/batchnorm/addo
BN3/batchnorm/RsqrtRsqrtBN3/batchnorm/add:z:0*
T0*
_output_shapes
:2
BN3/batchnorm/Rsqrt�
 BN3/batchnorm/mul/ReadVariableOpReadVariableOp)bn3_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02"
 BN3/batchnorm/mul/ReadVariableOp�
BN3/batchnorm/mulMulBN3/batchnorm/Rsqrt:y:0(BN3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
BN3/batchnorm/mul�
BN3/batchnorm/mul_1Mulactivation_3/Relu:activations:0BN3/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������2
BN3/batchnorm/mul_1�
BN3/batchnorm/mul_2MulBN3/moments/Squeeze:output:0BN3/batchnorm/mul:z:0*
T0*
_output_shapes
:2
BN3/batchnorm/mul_2�
BN3/batchnorm/ReadVariableOpReadVariableOp%bn3_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
BN3/batchnorm/ReadVariableOp�
BN3/batchnorm/subSub$BN3/batchnorm/ReadVariableOp:value:0BN3/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
BN3/batchnorm/sub�
BN3/batchnorm/add_1AddV2BN3/batchnorm/mul_1:z:0BN3/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������2
BN3/batchnorm/add_1�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMulBN3/batchnorm/add_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_1/BiasAdd�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMuldense_1/BiasAdd:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_2/BiasAddz
tf.math.tanh/TanhTanhdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
tf.math.tanh/Tanh�
!conv1d_1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv1d_1/kernel/Regularizer/Const�
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype020
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp�
conv1d_1/kernel/Regularizer/AbsAbs6conv1d_1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2!
conv1d_1/kernel/Regularizer/Abs�
#conv1d_1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_1/kernel/Regularizer/Const_1�
conv1d_1/kernel/Regularizer/SumSum#conv1d_1/kernel/Regularizer/Abs:y:0,conv1d_1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/Sum�
!conv1d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2#
!conv1d_1/kernel/Regularizer/mul/x�
conv1d_1/kernel/Regularizer/mulMul*conv1d_1/kernel/Regularizer/mul/x:output:0(conv1d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/mul�
conv1d_1/kernel/Regularizer/addAddV2*conv1d_1/kernel/Regularizer/Const:output:0#conv1d_1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/add�
1conv1d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype023
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_1/kernel/Regularizer/SquareSquare9conv1d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2$
"conv1d_1/kernel/Regularizer/Square�
#conv1d_1/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_1/kernel/Regularizer/Const_2�
!conv1d_1/kernel/Regularizer/Sum_1Sum&conv1d_1/kernel/Regularizer/Square:y:0,conv1d_1/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/Sum_1�
#conv1d_1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2%
#conv1d_1/kernel/Regularizer/mul_1/x�
!conv1d_1/kernel/Regularizer/mul_1Mul,conv1d_1/kernel/Regularizer/mul_1/x:output:0*conv1d_1/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/mul_1�
!conv1d_1/kernel/Regularizer/add_1AddV2#conv1d_1/kernel/Regularizer/add:z:0%conv1d_1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/add_1�
!conv1d_2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv1d_2/kernel/Regularizer/Const�
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp4conv1d_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype020
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp�
conv1d_2/kernel/Regularizer/AbsAbs6conv1d_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2!
conv1d_2/kernel/Regularizer/Abs�
#conv1d_2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_2/kernel/Regularizer/Const_1�
conv1d_2/kernel/Regularizer/SumSum#conv1d_2/kernel/Regularizer/Abs:y:0,conv1d_2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/Sum�
!conv1d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2#
!conv1d_2/kernel/Regularizer/mul/x�
conv1d_2/kernel/Regularizer/mulMul*conv1d_2/kernel/Regularizer/mul/x:output:0(conv1d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/mul�
conv1d_2/kernel/Regularizer/addAddV2*conv1d_2/kernel/Regularizer/Const:output:0#conv1d_2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/add�
1conv1d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype023
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_2/kernel/Regularizer/SquareSquare9conv1d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2$
"conv1d_2/kernel/Regularizer/Square�
#conv1d_2/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_2/kernel/Regularizer/Const_2�
!conv1d_2/kernel/Regularizer/Sum_1Sum&conv1d_2/kernel/Regularizer/Square:y:0,conv1d_2/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/Sum_1�
#conv1d_2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2%
#conv1d_2/kernel/Regularizer/mul_1/x�
!conv1d_2/kernel/Regularizer/mul_1Mul,conv1d_2/kernel/Regularizer/mul_1/x:output:0*conv1d_2/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/mul_1�
!conv1d_2/kernel/Regularizer/add_1AddV2#conv1d_2/kernel/Regularizer/add:z:0%conv1d_2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/add_1�

IdentityIdentitytf.math.tanh/Tanh:y:0(^BN1/AssignMovingAvg/AssignSubVariableOp#^BN1/AssignMovingAvg/ReadVariableOp*^BN1/AssignMovingAvg_1/AssignSubVariableOp%^BN1/AssignMovingAvg_1/ReadVariableOp^BN1/batchnorm/ReadVariableOp!^BN1/batchnorm/mul/ReadVariableOp(^BN2/AssignMovingAvg/AssignSubVariableOp#^BN2/AssignMovingAvg/ReadVariableOp*^BN2/AssignMovingAvg_1/AssignSubVariableOp%^BN2/AssignMovingAvg_1/ReadVariableOp^BN2/batchnorm/ReadVariableOp!^BN2/batchnorm/mul/ReadVariableOp(^BN3/AssignMovingAvg/AssignSubVariableOp#^BN3/AssignMovingAvg/ReadVariableOp*^BN3/AssignMovingAvg_1/AssignSubVariableOp%^BN3/AssignMovingAvg_1/ReadVariableOp^BN3/batchnorm/ReadVariableOp!^BN3/batchnorm/mul/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/conv1d/ExpandDims_1/ReadVariableOp/^conv1d_1/kernel/Regularizer/Abs/ReadVariableOp2^conv1d_1/kernel/Regularizer/Square/ReadVariableOp ^conv1d_2/BiasAdd/ReadVariableOp,^conv1d_2/conv1d/ExpandDims_1/ReadVariableOp/^conv1d_2/kernel/Regularizer/Abs/ReadVariableOp2^conv1d_2/kernel/Regularizer/Square/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : 2R
'BN1/AssignMovingAvg/AssignSubVariableOp'BN1/AssignMovingAvg/AssignSubVariableOp2H
"BN1/AssignMovingAvg/ReadVariableOp"BN1/AssignMovingAvg/ReadVariableOp2V
)BN1/AssignMovingAvg_1/AssignSubVariableOp)BN1/AssignMovingAvg_1/AssignSubVariableOp2L
$BN1/AssignMovingAvg_1/ReadVariableOp$BN1/AssignMovingAvg_1/ReadVariableOp2<
BN1/batchnorm/ReadVariableOpBN1/batchnorm/ReadVariableOp2D
 BN1/batchnorm/mul/ReadVariableOp BN1/batchnorm/mul/ReadVariableOp2R
'BN2/AssignMovingAvg/AssignSubVariableOp'BN2/AssignMovingAvg/AssignSubVariableOp2H
"BN2/AssignMovingAvg/ReadVariableOp"BN2/AssignMovingAvg/ReadVariableOp2V
)BN2/AssignMovingAvg_1/AssignSubVariableOp)BN2/AssignMovingAvg_1/AssignSubVariableOp2L
$BN2/AssignMovingAvg_1/ReadVariableOp$BN2/AssignMovingAvg_1/ReadVariableOp2<
BN2/batchnorm/ReadVariableOpBN2/batchnorm/ReadVariableOp2D
 BN2/batchnorm/mul/ReadVariableOp BN2/batchnorm/mul/ReadVariableOp2R
'BN3/AssignMovingAvg/AssignSubVariableOp'BN3/AssignMovingAvg/AssignSubVariableOp2H
"BN3/AssignMovingAvg/ReadVariableOp"BN3/AssignMovingAvg/ReadVariableOp2V
)BN3/AssignMovingAvg_1/AssignSubVariableOp)BN3/AssignMovingAvg_1/AssignSubVariableOp2L
$BN3/AssignMovingAvg_1/ReadVariableOp$BN3/AssignMovingAvg_1/ReadVariableOp2<
BN3/batchnorm/ReadVariableOpBN3/batchnorm/ReadVariableOp2D
 BN3/batchnorm/mul/ReadVariableOp BN3/batchnorm/mul/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp2`
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp2f
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp1conv1d_1/kernel/Regularizer/Square/ReadVariableOp2B
conv1d_2/BiasAdd/ReadVariableOpconv1d_2/BiasAdd/ReadVariableOp2Z
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp2`
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp2f
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp1conv1d_2/kernel/Regularizer/Square/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
?__inference_dense_layer_call_and_return_conditional_losses_7473

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�	
�
A__inference_dense_2_layer_call_and_return_conditional_losses_7631

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
A__inference_dense_2_layer_call_and_return_conditional_losses_8977

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_encoder_layer_call_fn_8534

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_encoder_layer_call_and_return_conditional_losses_80042
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�h
�	
A__inference_encoder_layer_call_and_return_conditional_losses_7679
input_1#
conv1d_1_7186:@
conv1d_1_7188:@
bn1_7288:@
bn1_7290:@
bn1_7292:@
bn1_7294:@#
conv1d_2_7338:@ 
conv1d_2_7340: 
bn2_7440: 
bn2_7442: 
bn2_7444: 
bn2_7446: 

dense_7484: 

dense_7486:
bn3_7586:
bn3_7588:
bn3_7590:
bn3_7592:
dense_1_7616:
dense_1_7618:
dense_2_7642:
dense_2_7644:
identity��BN1/StatefulPartitionedCall�BN2/StatefulPartitionedCall�BN3/StatefulPartitionedCall� conv1d_1/StatefulPartitionedCall�.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp�1conv1d_1/kernel/Regularizer/Square/ReadVariableOp� conv1d_2/StatefulPartitionedCall�.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp�1conv1d_2/kernel/Regularizer/Square/ReadVariableOp�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCallinput_1conv1d_1_7186conv1d_1_7188*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv1d_1_layer_call_and_return_conditional_losses_71752"
 conv1d_1/StatefulPartitionedCall�
activation_1/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_71962
activation_1/PartitionedCall�
BN1/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0bn1_7288bn1_7290bn1_7292bn1_7294*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *F
fAR?
=__inference_BN1_layer_call_and_return_conditional_losses_72402
BN1/StatefulPartitionedCall�
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall$BN1/StatefulPartitionedCall:output:0conv1d_2_7338conv1d_2_7340*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv1d_2_layer_call_and_return_conditional_losses_73272"
 conv1d_2/StatefulPartitionedCall�
activation_2/PartitionedCallPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_activation_2_layer_call_and_return_conditional_losses_73482
activation_2/PartitionedCall�
BN2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0bn2_7440bn2_7442bn2_7444bn2_7446*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *F
fAR?
=__inference_BN2_layer_call_and_return_conditional_losses_73922
BN2/StatefulPartitionedCall�
flatten/PartitionedCallPartitionedCall$BN2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_74552
flatten/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_7484
dense_7486*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_74732
dense/StatefulPartitionedCall�
activation_3/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_activation_3_layer_call_and_return_conditional_losses_74942
activation_3/PartitionedCall�
BN3/StatefulPartitionedCallStatefulPartitionedCall%activation_3/PartitionedCall:output:0bn3_7586bn3_7588bn3_7590bn3_7592*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *F
fAR?
=__inference_BN3_layer_call_and_return_conditional_losses_75382
BN3/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall$BN3/StatefulPartitionedCall:output:0dense_1_7616dense_1_7618*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_76052!
dense_1/StatefulPartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_7642dense_2_7644*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_76312!
dense_2/StatefulPartitionedCall�
tf.math.tanh/TanhTanh(dense_2/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������2
tf.math.tanh/Tanh�
!conv1d_1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv1d_1/kernel/Regularizer/Const�
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv1d_1_7186*"
_output_shapes
:@*
dtype020
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp�
conv1d_1/kernel/Regularizer/AbsAbs6conv1d_1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2!
conv1d_1/kernel/Regularizer/Abs�
#conv1d_1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_1/kernel/Regularizer/Const_1�
conv1d_1/kernel/Regularizer/SumSum#conv1d_1/kernel/Regularizer/Abs:y:0,conv1d_1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/Sum�
!conv1d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2#
!conv1d_1/kernel/Regularizer/mul/x�
conv1d_1/kernel/Regularizer/mulMul*conv1d_1/kernel/Regularizer/mul/x:output:0(conv1d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/mul�
conv1d_1/kernel/Regularizer/addAddV2*conv1d_1/kernel/Regularizer/Const:output:0#conv1d_1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/add�
1conv1d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_1_7186*"
_output_shapes
:@*
dtype023
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_1/kernel/Regularizer/SquareSquare9conv1d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2$
"conv1d_1/kernel/Regularizer/Square�
#conv1d_1/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_1/kernel/Regularizer/Const_2�
!conv1d_1/kernel/Regularizer/Sum_1Sum&conv1d_1/kernel/Regularizer/Square:y:0,conv1d_1/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/Sum_1�
#conv1d_1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2%
#conv1d_1/kernel/Regularizer/mul_1/x�
!conv1d_1/kernel/Regularizer/mul_1Mul,conv1d_1/kernel/Regularizer/mul_1/x:output:0*conv1d_1/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/mul_1�
!conv1d_1/kernel/Regularizer/add_1AddV2#conv1d_1/kernel/Regularizer/add:z:0%conv1d_1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/add_1�
!conv1d_2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv1d_2/kernel/Regularizer/Const�
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv1d_2_7338*"
_output_shapes
:@ *
dtype020
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp�
conv1d_2/kernel/Regularizer/AbsAbs6conv1d_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2!
conv1d_2/kernel/Regularizer/Abs�
#conv1d_2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_2/kernel/Regularizer/Const_1�
conv1d_2/kernel/Regularizer/SumSum#conv1d_2/kernel/Regularizer/Abs:y:0,conv1d_2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/Sum�
!conv1d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2#
!conv1d_2/kernel/Regularizer/mul/x�
conv1d_2/kernel/Regularizer/mulMul*conv1d_2/kernel/Regularizer/mul/x:output:0(conv1d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/mul�
conv1d_2/kernel/Regularizer/addAddV2*conv1d_2/kernel/Regularizer/Const:output:0#conv1d_2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/add�
1conv1d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_2_7338*"
_output_shapes
:@ *
dtype023
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_2/kernel/Regularizer/SquareSquare9conv1d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2$
"conv1d_2/kernel/Regularizer/Square�
#conv1d_2/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_2/kernel/Regularizer/Const_2�
!conv1d_2/kernel/Regularizer/Sum_1Sum&conv1d_2/kernel/Regularizer/Square:y:0,conv1d_2/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/Sum_1�
#conv1d_2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2%
#conv1d_2/kernel/Regularizer/mul_1/x�
!conv1d_2/kernel/Regularizer/mul_1Mul,conv1d_2/kernel/Regularizer/mul_1/x:output:0*conv1d_2/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/mul_1�
!conv1d_2/kernel/Regularizer/add_1AddV2#conv1d_2/kernel/Regularizer/add:z:0%conv1d_2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/add_1�
IdentityIdentitytf.math.tanh/Tanh:y:0^BN1/StatefulPartitionedCall^BN2/StatefulPartitionedCall^BN3/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall/^conv1d_1/kernel/Regularizer/Abs/ReadVariableOp2^conv1d_1/kernel/Regularizer/Square/ReadVariableOp!^conv1d_2/StatefulPartitionedCall/^conv1d_2/kernel/Regularizer/Abs/ReadVariableOp2^conv1d_2/kernel/Regularizer/Square/ReadVariableOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : 2:
BN1/StatefulPartitionedCallBN1/StatefulPartitionedCall2:
BN2/StatefulPartitionedCallBN2/StatefulPartitionedCall2:
BN3/StatefulPartitionedCallBN3/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2`
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp2f
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp1conv1d_1/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2`
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp2f
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp1conv1d_2/kernel/Regularizer/Square/ReadVariableOp2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:T P
+
_output_shapes
:���������
!
_user_specified_name	input_1
�	
�
A__inference_dense_1_layer_call_and_return_conditional_losses_7605

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
__inference__wrapped_model_7141
input_1R
<encoder_conv1d_1_conv1d_expanddims_1_readvariableop_resource:@>
0encoder_conv1d_1_biasadd_readvariableop_resource:@;
-encoder_bn1_batchnorm_readvariableop_resource:@?
1encoder_bn1_batchnorm_mul_readvariableop_resource:@=
/encoder_bn1_batchnorm_readvariableop_1_resource:@=
/encoder_bn1_batchnorm_readvariableop_2_resource:@R
<encoder_conv1d_2_conv1d_expanddims_1_readvariableop_resource:@ >
0encoder_conv1d_2_biasadd_readvariableop_resource: ;
-encoder_bn2_batchnorm_readvariableop_resource: ?
1encoder_bn2_batchnorm_mul_readvariableop_resource: =
/encoder_bn2_batchnorm_readvariableop_1_resource: =
/encoder_bn2_batchnorm_readvariableop_2_resource: >
,encoder_dense_matmul_readvariableop_resource: ;
-encoder_dense_biasadd_readvariableop_resource:;
-encoder_bn3_batchnorm_readvariableop_resource:?
1encoder_bn3_batchnorm_mul_readvariableop_resource:=
/encoder_bn3_batchnorm_readvariableop_1_resource:=
/encoder_bn3_batchnorm_readvariableop_2_resource:@
.encoder_dense_1_matmul_readvariableop_resource:=
/encoder_dense_1_biasadd_readvariableop_resource:@
.encoder_dense_2_matmul_readvariableop_resource:=
/encoder_dense_2_biasadd_readvariableop_resource:
identity��$encoder/BN1/batchnorm/ReadVariableOp�&encoder/BN1/batchnorm/ReadVariableOp_1�&encoder/BN1/batchnorm/ReadVariableOp_2�(encoder/BN1/batchnorm/mul/ReadVariableOp�$encoder/BN2/batchnorm/ReadVariableOp�&encoder/BN2/batchnorm/ReadVariableOp_1�&encoder/BN2/batchnorm/ReadVariableOp_2�(encoder/BN2/batchnorm/mul/ReadVariableOp�$encoder/BN3/batchnorm/ReadVariableOp�&encoder/BN3/batchnorm/ReadVariableOp_1�&encoder/BN3/batchnorm/ReadVariableOp_2�(encoder/BN3/batchnorm/mul/ReadVariableOp�'encoder/conv1d_1/BiasAdd/ReadVariableOp�3encoder/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp�'encoder/conv1d_2/BiasAdd/ReadVariableOp�3encoder/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp�$encoder/dense/BiasAdd/ReadVariableOp�#encoder/dense/MatMul/ReadVariableOp�&encoder/dense_1/BiasAdd/ReadVariableOp�%encoder/dense_1/MatMul/ReadVariableOp�&encoder/dense_2/BiasAdd/ReadVariableOp�%encoder/dense_2/MatMul/ReadVariableOp�
&encoder/conv1d_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2(
&encoder/conv1d_1/conv1d/ExpandDims/dim�
"encoder/conv1d_1/conv1d/ExpandDims
ExpandDimsinput_1/encoder/conv1d_1/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������2$
"encoder/conv1d_1/conv1d/ExpandDims�
3encoder/conv1d_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp<encoder_conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype025
3encoder/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp�
(encoder/conv1d_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2*
(encoder/conv1d_1/conv1d/ExpandDims_1/dim�
$encoder/conv1d_1/conv1d/ExpandDims_1
ExpandDims;encoder/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp:value:01encoder/conv1d_1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@2&
$encoder/conv1d_1/conv1d/ExpandDims_1�
encoder/conv1d_1/conv1dConv2D+encoder/conv1d_1/conv1d/ExpandDims:output:0-encoder/conv1d_1/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
2
encoder/conv1d_1/conv1d�
encoder/conv1d_1/conv1d/SqueezeSqueeze encoder/conv1d_1/conv1d:output:0*
T0*+
_output_shapes
:���������@*
squeeze_dims

���������2!
encoder/conv1d_1/conv1d/Squeeze�
'encoder/conv1d_1/BiasAdd/ReadVariableOpReadVariableOp0encoder_conv1d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'encoder/conv1d_1/BiasAdd/ReadVariableOp�
encoder/conv1d_1/BiasAddBiasAdd(encoder/conv1d_1/conv1d/Squeeze:output:0/encoder/conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@2
encoder/conv1d_1/BiasAdd�
encoder/activation_1/ReluRelu!encoder/conv1d_1/BiasAdd:output:0*
T0*+
_output_shapes
:���������@2
encoder/activation_1/Relu�
$encoder/BN1/batchnorm/ReadVariableOpReadVariableOp-encoder_bn1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02&
$encoder/BN1/batchnorm/ReadVariableOp
encoder/BN1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
encoder/BN1/batchnorm/add/y�
encoder/BN1/batchnorm/addAddV2,encoder/BN1/batchnorm/ReadVariableOp:value:0$encoder/BN1/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
encoder/BN1/batchnorm/add�
encoder/BN1/batchnorm/RsqrtRsqrtencoder/BN1/batchnorm/add:z:0*
T0*
_output_shapes
:@2
encoder/BN1/batchnorm/Rsqrt�
(encoder/BN1/batchnorm/mul/ReadVariableOpReadVariableOp1encoder_bn1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02*
(encoder/BN1/batchnorm/mul/ReadVariableOp�
encoder/BN1/batchnorm/mulMulencoder/BN1/batchnorm/Rsqrt:y:00encoder/BN1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
encoder/BN1/batchnorm/mul�
encoder/BN1/batchnorm/mul_1Mul'encoder/activation_1/Relu:activations:0encoder/BN1/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������@2
encoder/BN1/batchnorm/mul_1�
&encoder/BN1/batchnorm/ReadVariableOp_1ReadVariableOp/encoder_bn1_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&encoder/BN1/batchnorm/ReadVariableOp_1�
encoder/BN1/batchnorm/mul_2Mul.encoder/BN1/batchnorm/ReadVariableOp_1:value:0encoder/BN1/batchnorm/mul:z:0*
T0*
_output_shapes
:@2
encoder/BN1/batchnorm/mul_2�
&encoder/BN1/batchnorm/ReadVariableOp_2ReadVariableOp/encoder_bn1_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02(
&encoder/BN1/batchnorm/ReadVariableOp_2�
encoder/BN1/batchnorm/subSub.encoder/BN1/batchnorm/ReadVariableOp_2:value:0encoder/BN1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
encoder/BN1/batchnorm/sub�
encoder/BN1/batchnorm/add_1AddV2encoder/BN1/batchnorm/mul_1:z:0encoder/BN1/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������@2
encoder/BN1/batchnorm/add_1�
&encoder/conv1d_2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2(
&encoder/conv1d_2/conv1d/ExpandDims/dim�
"encoder/conv1d_2/conv1d/ExpandDims
ExpandDimsencoder/BN1/batchnorm/add_1:z:0/encoder/conv1d_2/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������@2$
"encoder/conv1d_2/conv1d/ExpandDims�
3encoder/conv1d_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp<encoder_conv1d_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype025
3encoder/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp�
(encoder/conv1d_2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2*
(encoder/conv1d_2/conv1d/ExpandDims_1/dim�
$encoder/conv1d_2/conv1d/ExpandDims_1
ExpandDims;encoder/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp:value:01encoder/conv1d_2/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ 2&
$encoder/conv1d_2/conv1d/ExpandDims_1�
encoder/conv1d_2/conv1dConv2D+encoder/conv1d_2/conv1d/ExpandDims:output:0-encoder/conv1d_2/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
2
encoder/conv1d_2/conv1d�
encoder/conv1d_2/conv1d/SqueezeSqueeze encoder/conv1d_2/conv1d:output:0*
T0*+
_output_shapes
:��������� *
squeeze_dims

���������2!
encoder/conv1d_2/conv1d/Squeeze�
'encoder/conv1d_2/BiasAdd/ReadVariableOpReadVariableOp0encoder_conv1d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'encoder/conv1d_2/BiasAdd/ReadVariableOp�
encoder/conv1d_2/BiasAddBiasAdd(encoder/conv1d_2/conv1d/Squeeze:output:0/encoder/conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� 2
encoder/conv1d_2/BiasAdd�
encoder/activation_2/ReluRelu!encoder/conv1d_2/BiasAdd:output:0*
T0*+
_output_shapes
:��������� 2
encoder/activation_2/Relu�
$encoder/BN2/batchnorm/ReadVariableOpReadVariableOp-encoder_bn2_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02&
$encoder/BN2/batchnorm/ReadVariableOp
encoder/BN2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
encoder/BN2/batchnorm/add/y�
encoder/BN2/batchnorm/addAddV2,encoder/BN2/batchnorm/ReadVariableOp:value:0$encoder/BN2/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
encoder/BN2/batchnorm/add�
encoder/BN2/batchnorm/RsqrtRsqrtencoder/BN2/batchnorm/add:z:0*
T0*
_output_shapes
: 2
encoder/BN2/batchnorm/Rsqrt�
(encoder/BN2/batchnorm/mul/ReadVariableOpReadVariableOp1encoder_bn2_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02*
(encoder/BN2/batchnorm/mul/ReadVariableOp�
encoder/BN2/batchnorm/mulMulencoder/BN2/batchnorm/Rsqrt:y:00encoder/BN2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
encoder/BN2/batchnorm/mul�
encoder/BN2/batchnorm/mul_1Mul'encoder/activation_2/Relu:activations:0encoder/BN2/batchnorm/mul:z:0*
T0*+
_output_shapes
:��������� 2
encoder/BN2/batchnorm/mul_1�
&encoder/BN2/batchnorm/ReadVariableOp_1ReadVariableOp/encoder_bn2_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&encoder/BN2/batchnorm/ReadVariableOp_1�
encoder/BN2/batchnorm/mul_2Mul.encoder/BN2/batchnorm/ReadVariableOp_1:value:0encoder/BN2/batchnorm/mul:z:0*
T0*
_output_shapes
: 2
encoder/BN2/batchnorm/mul_2�
&encoder/BN2/batchnorm/ReadVariableOp_2ReadVariableOp/encoder_bn2_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02(
&encoder/BN2/batchnorm/ReadVariableOp_2�
encoder/BN2/batchnorm/subSub.encoder/BN2/batchnorm/ReadVariableOp_2:value:0encoder/BN2/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
encoder/BN2/batchnorm/sub�
encoder/BN2/batchnorm/add_1AddV2encoder/BN2/batchnorm/mul_1:z:0encoder/BN2/batchnorm/sub:z:0*
T0*+
_output_shapes
:��������� 2
encoder/BN2/batchnorm/add_1
encoder/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����    2
encoder/flatten/Const�
encoder/flatten/ReshapeReshapeencoder/BN2/batchnorm/add_1:z:0encoder/flatten/Const:output:0*
T0*'
_output_shapes
:��������� 2
encoder/flatten/Reshape�
#encoder/dense/MatMul/ReadVariableOpReadVariableOp,encoder_dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02%
#encoder/dense/MatMul/ReadVariableOp�
encoder/dense/MatMulMatMul encoder/flatten/Reshape:output:0+encoder/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
encoder/dense/MatMul�
$encoder/dense/BiasAdd/ReadVariableOpReadVariableOp-encoder_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$encoder/dense/BiasAdd/ReadVariableOp�
encoder/dense/BiasAddBiasAddencoder/dense/MatMul:product:0,encoder/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
encoder/dense/BiasAdd�
encoder/activation_3/ReluReluencoder/dense/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
encoder/activation_3/Relu�
$encoder/BN3/batchnorm/ReadVariableOpReadVariableOp-encoder_bn3_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02&
$encoder/BN3/batchnorm/ReadVariableOp
encoder/BN3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
encoder/BN3/batchnorm/add/y�
encoder/BN3/batchnorm/addAddV2,encoder/BN3/batchnorm/ReadVariableOp:value:0$encoder/BN3/batchnorm/add/y:output:0*
T0*
_output_shapes
:2
encoder/BN3/batchnorm/add�
encoder/BN3/batchnorm/RsqrtRsqrtencoder/BN3/batchnorm/add:z:0*
T0*
_output_shapes
:2
encoder/BN3/batchnorm/Rsqrt�
(encoder/BN3/batchnorm/mul/ReadVariableOpReadVariableOp1encoder_bn3_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02*
(encoder/BN3/batchnorm/mul/ReadVariableOp�
encoder/BN3/batchnorm/mulMulencoder/BN3/batchnorm/Rsqrt:y:00encoder/BN3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
encoder/BN3/batchnorm/mul�
encoder/BN3/batchnorm/mul_1Mul'encoder/activation_3/Relu:activations:0encoder/BN3/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������2
encoder/BN3/batchnorm/mul_1�
&encoder/BN3/batchnorm/ReadVariableOp_1ReadVariableOp/encoder_bn3_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02(
&encoder/BN3/batchnorm/ReadVariableOp_1�
encoder/BN3/batchnorm/mul_2Mul.encoder/BN3/batchnorm/ReadVariableOp_1:value:0encoder/BN3/batchnorm/mul:z:0*
T0*
_output_shapes
:2
encoder/BN3/batchnorm/mul_2�
&encoder/BN3/batchnorm/ReadVariableOp_2ReadVariableOp/encoder_bn3_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02(
&encoder/BN3/batchnorm/ReadVariableOp_2�
encoder/BN3/batchnorm/subSub.encoder/BN3/batchnorm/ReadVariableOp_2:value:0encoder/BN3/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
encoder/BN3/batchnorm/sub�
encoder/BN3/batchnorm/add_1AddV2encoder/BN3/batchnorm/mul_1:z:0encoder/BN3/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������2
encoder/BN3/batchnorm/add_1�
%encoder/dense_1/MatMul/ReadVariableOpReadVariableOp.encoder_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02'
%encoder/dense_1/MatMul/ReadVariableOp�
encoder/dense_1/MatMulMatMulencoder/BN3/batchnorm/add_1:z:0-encoder/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
encoder/dense_1/MatMul�
&encoder/dense_1/BiasAdd/ReadVariableOpReadVariableOp/encoder_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&encoder/dense_1/BiasAdd/ReadVariableOp�
encoder/dense_1/BiasAddBiasAdd encoder/dense_1/MatMul:product:0.encoder/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
encoder/dense_1/BiasAdd�
%encoder/dense_2/MatMul/ReadVariableOpReadVariableOp.encoder_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype02'
%encoder/dense_2/MatMul/ReadVariableOp�
encoder/dense_2/MatMulMatMul encoder/dense_1/BiasAdd:output:0-encoder/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
encoder/dense_2/MatMul�
&encoder/dense_2/BiasAdd/ReadVariableOpReadVariableOp/encoder_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&encoder/dense_2/BiasAdd/ReadVariableOp�
encoder/dense_2/BiasAddBiasAdd encoder/dense_2/MatMul:product:0.encoder/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
encoder/dense_2/BiasAdd�
encoder/tf.math.tanh/TanhTanh encoder/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
encoder/tf.math.tanh/Tanh�
IdentityIdentityencoder/tf.math.tanh/Tanh:y:0%^encoder/BN1/batchnorm/ReadVariableOp'^encoder/BN1/batchnorm/ReadVariableOp_1'^encoder/BN1/batchnorm/ReadVariableOp_2)^encoder/BN1/batchnorm/mul/ReadVariableOp%^encoder/BN2/batchnorm/ReadVariableOp'^encoder/BN2/batchnorm/ReadVariableOp_1'^encoder/BN2/batchnorm/ReadVariableOp_2)^encoder/BN2/batchnorm/mul/ReadVariableOp%^encoder/BN3/batchnorm/ReadVariableOp'^encoder/BN3/batchnorm/ReadVariableOp_1'^encoder/BN3/batchnorm/ReadVariableOp_2)^encoder/BN3/batchnorm/mul/ReadVariableOp(^encoder/conv1d_1/BiasAdd/ReadVariableOp4^encoder/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp(^encoder/conv1d_2/BiasAdd/ReadVariableOp4^encoder/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp%^encoder/dense/BiasAdd/ReadVariableOp$^encoder/dense/MatMul/ReadVariableOp'^encoder/dense_1/BiasAdd/ReadVariableOp&^encoder/dense_1/MatMul/ReadVariableOp'^encoder/dense_2/BiasAdd/ReadVariableOp&^encoder/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : 2L
$encoder/BN1/batchnorm/ReadVariableOp$encoder/BN1/batchnorm/ReadVariableOp2P
&encoder/BN1/batchnorm/ReadVariableOp_1&encoder/BN1/batchnorm/ReadVariableOp_12P
&encoder/BN1/batchnorm/ReadVariableOp_2&encoder/BN1/batchnorm/ReadVariableOp_22T
(encoder/BN1/batchnorm/mul/ReadVariableOp(encoder/BN1/batchnorm/mul/ReadVariableOp2L
$encoder/BN2/batchnorm/ReadVariableOp$encoder/BN2/batchnorm/ReadVariableOp2P
&encoder/BN2/batchnorm/ReadVariableOp_1&encoder/BN2/batchnorm/ReadVariableOp_12P
&encoder/BN2/batchnorm/ReadVariableOp_2&encoder/BN2/batchnorm/ReadVariableOp_22T
(encoder/BN2/batchnorm/mul/ReadVariableOp(encoder/BN2/batchnorm/mul/ReadVariableOp2L
$encoder/BN3/batchnorm/ReadVariableOp$encoder/BN3/batchnorm/ReadVariableOp2P
&encoder/BN3/batchnorm/ReadVariableOp_1&encoder/BN3/batchnorm/ReadVariableOp_12P
&encoder/BN3/batchnorm/ReadVariableOp_2&encoder/BN3/batchnorm/ReadVariableOp_22T
(encoder/BN3/batchnorm/mul/ReadVariableOp(encoder/BN3/batchnorm/mul/ReadVariableOp2R
'encoder/conv1d_1/BiasAdd/ReadVariableOp'encoder/conv1d_1/BiasAdd/ReadVariableOp2j
3encoder/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp3encoder/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp2R
'encoder/conv1d_2/BiasAdd/ReadVariableOp'encoder/conv1d_2/BiasAdd/ReadVariableOp2j
3encoder/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp3encoder/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp2L
$encoder/dense/BiasAdd/ReadVariableOp$encoder/dense/BiasAdd/ReadVariableOp2J
#encoder/dense/MatMul/ReadVariableOp#encoder/dense/MatMul/ReadVariableOp2P
&encoder/dense_1/BiasAdd/ReadVariableOp&encoder/dense_1/BiasAdd/ReadVariableOp2N
%encoder/dense_1/MatMul/ReadVariableOp%encoder/dense_1/MatMul/ReadVariableOp2P
&encoder/dense_2/BiasAdd/ReadVariableOp&encoder/dense_2/BiasAdd/ReadVariableOp2N
%encoder/dense_2/MatMul/ReadVariableOp%encoder/dense_2/MatMul/ReadVariableOp:T P
+
_output_shapes
:���������
!
_user_specified_name	input_1
�
b
F__inference_activation_2_layer_call_and_return_conditional_losses_8739

inputs
identityR
ReluReluinputs*
T0*+
_output_shapes
:��������� 2
Reluj
IdentityIdentityRelu:activations:0*
T0*+
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� :S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
"__inference_BN3_layer_call_fn_8948

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *F
fAR?
=__inference_BN3_layer_call_and_return_conditional_losses_75582
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
b
F__inference_activation_1_layer_call_and_return_conditional_losses_7196

inputs
identityR
ReluReluinputs*
T0*+
_output_shapes
:���������@2
Reluj
IdentityIdentityRelu:activations:0*
T0*+
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
$__inference_dense_layer_call_fn_8856

inputs
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_74732
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�3
�
__inference__traced_save_9115
file_prefix.
*savev2_conv1d_1_kernel_read_readvariableop,
(savev2_conv1d_1_bias_read_readvariableop(
$savev2_bn1_gamma_read_readvariableop'
#savev2_bn1_beta_read_readvariableop.
*savev2_bn1_moving_mean_read_readvariableop2
.savev2_bn1_moving_variance_read_readvariableop.
*savev2_conv1d_2_kernel_read_readvariableop,
(savev2_conv1d_2_bias_read_readvariableop(
$savev2_bn2_gamma_read_readvariableop'
#savev2_bn2_beta_read_readvariableop.
*savev2_bn2_moving_mean_read_readvariableop2
.savev2_bn2_moving_variance_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_bn3_gamma_read_readvariableop'
#savev2_bn3_beta_read_readvariableop.
*savev2_bn3_moving_mean_read_readvariableop2
.savev2_bn3_moving_variance_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�

value�
B�
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv1d_1_kernel_read_readvariableop(savev2_conv1d_1_bias_read_readvariableop$savev2_bn1_gamma_read_readvariableop#savev2_bn1_beta_read_readvariableop*savev2_bn1_moving_mean_read_readvariableop.savev2_bn1_moving_variance_read_readvariableop*savev2_conv1d_2_kernel_read_readvariableop(savev2_conv1d_2_bias_read_readvariableop$savev2_bn2_gamma_read_readvariableop#savev2_bn2_beta_read_readvariableop*savev2_bn2_moving_mean_read_readvariableop.savev2_bn2_moving_variance_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_bn3_gamma_read_readvariableop#savev2_bn3_beta_read_readvariableop*savev2_bn3_moving_mean_read_readvariableop.savev2_bn3_moving_variance_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *%
dtypes
22
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
�: :@:@:@:@:@:@:@ : : : : : : :::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:($
"
_output_shapes
:@ : 

_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
�
�
=__inference_BN3_layer_call_and_return_conditional_losses_8922

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOp�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
batchnorm/add/y�
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������2
batchnorm/mul_1�
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1�
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2�
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2�
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������2
batchnorm/add_1�
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�0
�
=__inference_BN3_layer_call_and_return_conditional_losses_7538

inputs"
assignmovingavg_7513:$
assignmovingavg_1_7519:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��#AssignMovingAvg/AssignSubVariableOp�AssignMovingAvg/ReadVariableOp�%AssignMovingAvg_1/AssignSubVariableOp� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOp�
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:2
moments/StopGradient�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������2
moments/SquaredDifference�
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/variance�
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze�
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1�
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignMovingAvg/7513*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
AssignMovingAvg/decay�
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_7513*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*'
_class
loc:@AssignMovingAvg/7513*
_output_shapes
:2
AssignMovingAvg/sub�
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*'
_class
loc:@AssignMovingAvg/7513*
_output_shapes
:2
AssignMovingAvg/mul�
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_7513AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignMovingAvg/7513*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp�
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg_1/7519*
_output_shapes
: *
dtype0*
valueB
 *
�#<2
AssignMovingAvg_1/decay�
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_7519*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/7519*
_output_shapes
:2
AssignMovingAvg_1/sub�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/7519*
_output_shapes
:2
AssignMovingAvg_1/mul�
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_7519AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg_1/7519*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
batchnorm/add/y�
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������2
batchnorm/add_1�
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_dense_2_layer_call_fn_8986

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_76312
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�h
�	
A__inference_encoder_layer_call_and_return_conditional_losses_8004

inputs#
conv1d_1_7916:@
conv1d_1_7918:@
bn1_7922:@
bn1_7924:@
bn1_7926:@
bn1_7928:@#
conv1d_2_7931:@ 
conv1d_2_7933: 
bn2_7937: 
bn2_7939: 
bn2_7941: 
bn2_7943: 

dense_7947: 

dense_7949:
bn3_7953:
bn3_7955:
bn3_7957:
bn3_7959:
dense_1_7962:
dense_1_7964:
dense_2_7967:
dense_2_7969:
identity��BN1/StatefulPartitionedCall�BN2/StatefulPartitionedCall�BN3/StatefulPartitionedCall� conv1d_1/StatefulPartitionedCall�.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp�1conv1d_1/kernel/Regularizer/Square/ReadVariableOp� conv1d_2/StatefulPartitionedCall�.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp�1conv1d_2/kernel/Regularizer/Square/ReadVariableOp�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_1_7916conv1d_1_7918*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv1d_1_layer_call_and_return_conditional_losses_71752"
 conv1d_1/StatefulPartitionedCall�
activation_1/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_71962
activation_1/PartitionedCall�
BN1/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0bn1_7922bn1_7924bn1_7926bn1_7928*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *F
fAR?
=__inference_BN1_layer_call_and_return_conditional_losses_72602
BN1/StatefulPartitionedCall�
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall$BN1/StatefulPartitionedCall:output:0conv1d_2_7931conv1d_2_7933*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv1d_2_layer_call_and_return_conditional_losses_73272"
 conv1d_2/StatefulPartitionedCall�
activation_2/PartitionedCallPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_activation_2_layer_call_and_return_conditional_losses_73482
activation_2/PartitionedCall�
BN2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0bn2_7937bn2_7939bn2_7941bn2_7943*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *F
fAR?
=__inference_BN2_layer_call_and_return_conditional_losses_74122
BN2/StatefulPartitionedCall�
flatten/PartitionedCallPartitionedCall$BN2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_74552
flatten/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_7947
dense_7949*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_74732
dense/StatefulPartitionedCall�
activation_3/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_activation_3_layer_call_and_return_conditional_losses_74942
activation_3/PartitionedCall�
BN3/StatefulPartitionedCallStatefulPartitionedCall%activation_3/PartitionedCall:output:0bn3_7953bn3_7955bn3_7957bn3_7959*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *F
fAR?
=__inference_BN3_layer_call_and_return_conditional_losses_75582
BN3/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall$BN3/StatefulPartitionedCall:output:0dense_1_7962dense_1_7964*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_76052!
dense_1/StatefulPartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_7967dense_2_7969*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_76312!
dense_2/StatefulPartitionedCall�
tf.math.tanh/TanhTanh(dense_2/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������2
tf.math.tanh/Tanh�
!conv1d_1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv1d_1/kernel/Regularizer/Const�
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv1d_1_7916*"
_output_shapes
:@*
dtype020
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp�
conv1d_1/kernel/Regularizer/AbsAbs6conv1d_1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2!
conv1d_1/kernel/Regularizer/Abs�
#conv1d_1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_1/kernel/Regularizer/Const_1�
conv1d_1/kernel/Regularizer/SumSum#conv1d_1/kernel/Regularizer/Abs:y:0,conv1d_1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/Sum�
!conv1d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2#
!conv1d_1/kernel/Regularizer/mul/x�
conv1d_1/kernel/Regularizer/mulMul*conv1d_1/kernel/Regularizer/mul/x:output:0(conv1d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/mul�
conv1d_1/kernel/Regularizer/addAddV2*conv1d_1/kernel/Regularizer/Const:output:0#conv1d_1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/add�
1conv1d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_1_7916*"
_output_shapes
:@*
dtype023
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_1/kernel/Regularizer/SquareSquare9conv1d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2$
"conv1d_1/kernel/Regularizer/Square�
#conv1d_1/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_1/kernel/Regularizer/Const_2�
!conv1d_1/kernel/Regularizer/Sum_1Sum&conv1d_1/kernel/Regularizer/Square:y:0,conv1d_1/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/Sum_1�
#conv1d_1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2%
#conv1d_1/kernel/Regularizer/mul_1/x�
!conv1d_1/kernel/Regularizer/mul_1Mul,conv1d_1/kernel/Regularizer/mul_1/x:output:0*conv1d_1/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/mul_1�
!conv1d_1/kernel/Regularizer/add_1AddV2#conv1d_1/kernel/Regularizer/add:z:0%conv1d_1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/add_1�
!conv1d_2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv1d_2/kernel/Regularizer/Const�
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv1d_2_7931*"
_output_shapes
:@ *
dtype020
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp�
conv1d_2/kernel/Regularizer/AbsAbs6conv1d_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2!
conv1d_2/kernel/Regularizer/Abs�
#conv1d_2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_2/kernel/Regularizer/Const_1�
conv1d_2/kernel/Regularizer/SumSum#conv1d_2/kernel/Regularizer/Abs:y:0,conv1d_2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/Sum�
!conv1d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2#
!conv1d_2/kernel/Regularizer/mul/x�
conv1d_2/kernel/Regularizer/mulMul*conv1d_2/kernel/Regularizer/mul/x:output:0(conv1d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/mul�
conv1d_2/kernel/Regularizer/addAddV2*conv1d_2/kernel/Regularizer/Const:output:0#conv1d_2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/add�
1conv1d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_2_7931*"
_output_shapes
:@ *
dtype023
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_2/kernel/Regularizer/SquareSquare9conv1d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2$
"conv1d_2/kernel/Regularizer/Square�
#conv1d_2/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_2/kernel/Regularizer/Const_2�
!conv1d_2/kernel/Regularizer/Sum_1Sum&conv1d_2/kernel/Regularizer/Square:y:0,conv1d_2/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/Sum_1�
#conv1d_2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2%
#conv1d_2/kernel/Regularizer/mul_1/x�
!conv1d_2/kernel/Regularizer/mul_1Mul,conv1d_2/kernel/Regularizer/mul_1/x:output:0*conv1d_2/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/mul_1�
!conv1d_2/kernel/Regularizer/add_1AddV2#conv1d_2/kernel/Regularizer/add:z:0%conv1d_2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/add_1�
IdentityIdentitytf.math.tanh/Tanh:y:0^BN1/StatefulPartitionedCall^BN2/StatefulPartitionedCall^BN3/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall/^conv1d_1/kernel/Regularizer/Abs/ReadVariableOp2^conv1d_1/kernel/Regularizer/Square/ReadVariableOp!^conv1d_2/StatefulPartitionedCall/^conv1d_2/kernel/Regularizer/Abs/ReadVariableOp2^conv1d_2/kernel/Regularizer/Square/ReadVariableOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : 2:
BN1/StatefulPartitionedCallBN1/StatefulPartitionedCall2:
BN2/StatefulPartitionedCallBN2/StatefulPartitionedCall2:
BN3/StatefulPartitionedCallBN3/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2`
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp2f
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp1conv1d_1/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2`
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp2f
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp1conv1d_2/kernel/Regularizer/Square/ReadVariableOp2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�)
�
B__inference_conv1d_1_layer_call_and_return_conditional_losses_7175

inputsA
+conv1d_expanddims_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOp�.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp�1conv1d_1/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:���������@*
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@2	
BiasAdd�
!conv1d_1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv1d_1/kernel/Regularizer/Const�
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype020
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp�
conv1d_1/kernel/Regularizer/AbsAbs6conv1d_1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2!
conv1d_1/kernel/Regularizer/Abs�
#conv1d_1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_1/kernel/Regularizer/Const_1�
conv1d_1/kernel/Regularizer/SumSum#conv1d_1/kernel/Regularizer/Abs:y:0,conv1d_1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/Sum�
!conv1d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2#
!conv1d_1/kernel/Regularizer/mul/x�
conv1d_1/kernel/Regularizer/mulMul*conv1d_1/kernel/Regularizer/mul/x:output:0(conv1d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/mul�
conv1d_1/kernel/Regularizer/addAddV2*conv1d_1/kernel/Regularizer/Const:output:0#conv1d_1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/add�
1conv1d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype023
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_1/kernel/Regularizer/SquareSquare9conv1d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2$
"conv1d_1/kernel/Regularizer/Square�
#conv1d_1/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_1/kernel/Regularizer/Const_2�
!conv1d_1/kernel/Regularizer/Sum_1Sum&conv1d_1/kernel/Regularizer/Square:y:0,conv1d_1/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/Sum_1�
#conv1d_1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2%
#conv1d_1/kernel/Regularizer/mul_1/x�
!conv1d_1/kernel/Regularizer/mul_1Mul,conv1d_1/kernel/Regularizer/mul_1/x:output:0*conv1d_1/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/mul_1�
!conv1d_1/kernel/Regularizer/add_1AddV2#conv1d_1/kernel/Regularizer/add:z:0%conv1d_1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/add_1�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp/^conv1d_1/kernel/Regularizer/Abs/ReadVariableOp2^conv1d_1/kernel/Regularizer/Square/ReadVariableOp*
T0*+
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2`
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp2f
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp1conv1d_1/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
A__inference_encoder_layer_call_and_return_conditional_losses_8436

inputsJ
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:@6
(conv1d_1_biasadd_readvariableop_resource:@3
%bn1_batchnorm_readvariableop_resource:@7
)bn1_batchnorm_mul_readvariableop_resource:@5
'bn1_batchnorm_readvariableop_1_resource:@5
'bn1_batchnorm_readvariableop_2_resource:@J
4conv1d_2_conv1d_expanddims_1_readvariableop_resource:@ 6
(conv1d_2_biasadd_readvariableop_resource: 3
%bn2_batchnorm_readvariableop_resource: 7
)bn2_batchnorm_mul_readvariableop_resource: 5
'bn2_batchnorm_readvariableop_1_resource: 5
'bn2_batchnorm_readvariableop_2_resource: 6
$dense_matmul_readvariableop_resource: 3
%dense_biasadd_readvariableop_resource:3
%bn3_batchnorm_readvariableop_resource:7
)bn3_batchnorm_mul_readvariableop_resource:5
'bn3_batchnorm_readvariableop_1_resource:5
'bn3_batchnorm_readvariableop_2_resource:8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:8
&dense_2_matmul_readvariableop_resource:5
'dense_2_biasadd_readvariableop_resource:
identity��BN1/batchnorm/ReadVariableOp�BN1/batchnorm/ReadVariableOp_1�BN1/batchnorm/ReadVariableOp_2� BN1/batchnorm/mul/ReadVariableOp�BN2/batchnorm/ReadVariableOp�BN2/batchnorm/ReadVariableOp_1�BN2/batchnorm/ReadVariableOp_2� BN2/batchnorm/mul/ReadVariableOp�BN3/batchnorm/ReadVariableOp�BN3/batchnorm/ReadVariableOp_1�BN3/batchnorm/ReadVariableOp_2� BN3/batchnorm/mul/ReadVariableOp�conv1d_1/BiasAdd/ReadVariableOp�+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp�.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp�1conv1d_1/kernel/Regularizer/Square/ReadVariableOp�conv1d_2/BiasAdd/ReadVariableOp�+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp�.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp�1conv1d_2/kernel/Regularizer/Square/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�
conv1d_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
conv1d_1/conv1d/ExpandDims/dim�
conv1d_1/conv1d/ExpandDims
ExpandDimsinputs'conv1d_1/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������2
conv1d_1/conv1d/ExpandDims�
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype02-
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp�
 conv1d_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_1/conv1d/ExpandDims_1/dim�
conv1d_1/conv1d/ExpandDims_1
ExpandDims3conv1d_1/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@2
conv1d_1/conv1d/ExpandDims_1�
conv1d_1/conv1dConv2D#conv1d_1/conv1d/ExpandDims:output:0%conv1d_1/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
2
conv1d_1/conv1d�
conv1d_1/conv1d/SqueezeSqueezeconv1d_1/conv1d:output:0*
T0*+
_output_shapes
:���������@*
squeeze_dims

���������2
conv1d_1/conv1d/Squeeze�
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv1d_1/BiasAdd/ReadVariableOp�
conv1d_1/BiasAddBiasAdd conv1d_1/conv1d/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@2
conv1d_1/BiasAdd
activation_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*+
_output_shapes
:���������@2
activation_1/Relu�
BN1/batchnorm/ReadVariableOpReadVariableOp%bn1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
BN1/batchnorm/ReadVariableOpo
BN1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
BN1/batchnorm/add/y�
BN1/batchnorm/addAddV2$BN1/batchnorm/ReadVariableOp:value:0BN1/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
BN1/batchnorm/addo
BN1/batchnorm/RsqrtRsqrtBN1/batchnorm/add:z:0*
T0*
_output_shapes
:@2
BN1/batchnorm/Rsqrt�
 BN1/batchnorm/mul/ReadVariableOpReadVariableOp)bn1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02"
 BN1/batchnorm/mul/ReadVariableOp�
BN1/batchnorm/mulMulBN1/batchnorm/Rsqrt:y:0(BN1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
BN1/batchnorm/mul�
BN1/batchnorm/mul_1Mulactivation_1/Relu:activations:0BN1/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������@2
BN1/batchnorm/mul_1�
BN1/batchnorm/ReadVariableOp_1ReadVariableOp'bn1_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02 
BN1/batchnorm/ReadVariableOp_1�
BN1/batchnorm/mul_2Mul&BN1/batchnorm/ReadVariableOp_1:value:0BN1/batchnorm/mul:z:0*
T0*
_output_shapes
:@2
BN1/batchnorm/mul_2�
BN1/batchnorm/ReadVariableOp_2ReadVariableOp'bn1_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02 
BN1/batchnorm/ReadVariableOp_2�
BN1/batchnorm/subSub&BN1/batchnorm/ReadVariableOp_2:value:0BN1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
BN1/batchnorm/sub�
BN1/batchnorm/add_1AddV2BN1/batchnorm/mul_1:z:0BN1/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������@2
BN1/batchnorm/add_1�
conv1d_2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
conv1d_2/conv1d/ExpandDims/dim�
conv1d_2/conv1d/ExpandDims
ExpandDimsBN1/batchnorm/add_1:z:0'conv1d_2/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������@2
conv1d_2/conv1d/ExpandDims�
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype02-
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp�
 conv1d_2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_2/conv1d/ExpandDims_1/dim�
conv1d_2/conv1d/ExpandDims_1
ExpandDims3conv1d_2/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_2/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ 2
conv1d_2/conv1d/ExpandDims_1�
conv1d_2/conv1dConv2D#conv1d_2/conv1d/ExpandDims:output:0%conv1d_2/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
2
conv1d_2/conv1d�
conv1d_2/conv1d/SqueezeSqueezeconv1d_2/conv1d:output:0*
T0*+
_output_shapes
:��������� *
squeeze_dims

���������2
conv1d_2/conv1d/Squeeze�
conv1d_2/BiasAdd/ReadVariableOpReadVariableOp(conv1d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_2/BiasAdd/ReadVariableOp�
conv1d_2/BiasAddBiasAdd conv1d_2/conv1d/Squeeze:output:0'conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� 2
conv1d_2/BiasAdd
activation_2/ReluReluconv1d_2/BiasAdd:output:0*
T0*+
_output_shapes
:��������� 2
activation_2/Relu�
BN2/batchnorm/ReadVariableOpReadVariableOp%bn2_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
BN2/batchnorm/ReadVariableOpo
BN2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
BN2/batchnorm/add/y�
BN2/batchnorm/addAddV2$BN2/batchnorm/ReadVariableOp:value:0BN2/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
BN2/batchnorm/addo
BN2/batchnorm/RsqrtRsqrtBN2/batchnorm/add:z:0*
T0*
_output_shapes
: 2
BN2/batchnorm/Rsqrt�
 BN2/batchnorm/mul/ReadVariableOpReadVariableOp)bn2_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02"
 BN2/batchnorm/mul/ReadVariableOp�
BN2/batchnorm/mulMulBN2/batchnorm/Rsqrt:y:0(BN2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
BN2/batchnorm/mul�
BN2/batchnorm/mul_1Mulactivation_2/Relu:activations:0BN2/batchnorm/mul:z:0*
T0*+
_output_shapes
:��������� 2
BN2/batchnorm/mul_1�
BN2/batchnorm/ReadVariableOp_1ReadVariableOp'bn2_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02 
BN2/batchnorm/ReadVariableOp_1�
BN2/batchnorm/mul_2Mul&BN2/batchnorm/ReadVariableOp_1:value:0BN2/batchnorm/mul:z:0*
T0*
_output_shapes
: 2
BN2/batchnorm/mul_2�
BN2/batchnorm/ReadVariableOp_2ReadVariableOp'bn2_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02 
BN2/batchnorm/ReadVariableOp_2�
BN2/batchnorm/subSub&BN2/batchnorm/ReadVariableOp_2:value:0BN2/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
BN2/batchnorm/sub�
BN2/batchnorm/add_1AddV2BN2/batchnorm/mul_1:z:0BN2/batchnorm/sub:z:0*
T0*+
_output_shapes
:��������� 2
BN2/batchnorm/add_1o
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����    2
flatten/Const�
flatten/ReshapeReshapeBN2/batchnorm/add_1:z:0flatten/Const:output:0*
T0*'
_output_shapes
:��������� 2
flatten/Reshape�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense/BiasAddx
activation_3/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
activation_3/Relu�
BN3/batchnorm/ReadVariableOpReadVariableOp%bn3_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
BN3/batchnorm/ReadVariableOpo
BN3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
BN3/batchnorm/add/y�
BN3/batchnorm/addAddV2$BN3/batchnorm/ReadVariableOp:value:0BN3/batchnorm/add/y:output:0*
T0*
_output_shapes
:2
BN3/batchnorm/addo
BN3/batchnorm/RsqrtRsqrtBN3/batchnorm/add:z:0*
T0*
_output_shapes
:2
BN3/batchnorm/Rsqrt�
 BN3/batchnorm/mul/ReadVariableOpReadVariableOp)bn3_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02"
 BN3/batchnorm/mul/ReadVariableOp�
BN3/batchnorm/mulMulBN3/batchnorm/Rsqrt:y:0(BN3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
BN3/batchnorm/mul�
BN3/batchnorm/mul_1Mulactivation_3/Relu:activations:0BN3/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������2
BN3/batchnorm/mul_1�
BN3/batchnorm/ReadVariableOp_1ReadVariableOp'bn3_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02 
BN3/batchnorm/ReadVariableOp_1�
BN3/batchnorm/mul_2Mul&BN3/batchnorm/ReadVariableOp_1:value:0BN3/batchnorm/mul:z:0*
T0*
_output_shapes
:2
BN3/batchnorm/mul_2�
BN3/batchnorm/ReadVariableOp_2ReadVariableOp'bn3_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02 
BN3/batchnorm/ReadVariableOp_2�
BN3/batchnorm/subSub&BN3/batchnorm/ReadVariableOp_2:value:0BN3/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
BN3/batchnorm/sub�
BN3/batchnorm/add_1AddV2BN3/batchnorm/mul_1:z:0BN3/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������2
BN3/batchnorm/add_1�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMulBN3/batchnorm/add_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_1/BiasAdd�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMuldense_1/BiasAdd:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_2/BiasAddz
tf.math.tanh/TanhTanhdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
tf.math.tanh/Tanh�
!conv1d_1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv1d_1/kernel/Regularizer/Const�
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype020
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp�
conv1d_1/kernel/Regularizer/AbsAbs6conv1d_1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2!
conv1d_1/kernel/Regularizer/Abs�
#conv1d_1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_1/kernel/Regularizer/Const_1�
conv1d_1/kernel/Regularizer/SumSum#conv1d_1/kernel/Regularizer/Abs:y:0,conv1d_1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/Sum�
!conv1d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2#
!conv1d_1/kernel/Regularizer/mul/x�
conv1d_1/kernel/Regularizer/mulMul*conv1d_1/kernel/Regularizer/mul/x:output:0(conv1d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/mul�
conv1d_1/kernel/Regularizer/addAddV2*conv1d_1/kernel/Regularizer/Const:output:0#conv1d_1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/add�
1conv1d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype023
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_1/kernel/Regularizer/SquareSquare9conv1d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2$
"conv1d_1/kernel/Regularizer/Square�
#conv1d_1/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_1/kernel/Regularizer/Const_2�
!conv1d_1/kernel/Regularizer/Sum_1Sum&conv1d_1/kernel/Regularizer/Square:y:0,conv1d_1/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/Sum_1�
#conv1d_1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2%
#conv1d_1/kernel/Regularizer/mul_1/x�
!conv1d_1/kernel/Regularizer/mul_1Mul,conv1d_1/kernel/Regularizer/mul_1/x:output:0*conv1d_1/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/mul_1�
!conv1d_1/kernel/Regularizer/add_1AddV2#conv1d_1/kernel/Regularizer/add:z:0%conv1d_1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/add_1�
!conv1d_2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv1d_2/kernel/Regularizer/Const�
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp4conv1d_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype020
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp�
conv1d_2/kernel/Regularizer/AbsAbs6conv1d_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2!
conv1d_2/kernel/Regularizer/Abs�
#conv1d_2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_2/kernel/Regularizer/Const_1�
conv1d_2/kernel/Regularizer/SumSum#conv1d_2/kernel/Regularizer/Abs:y:0,conv1d_2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/Sum�
!conv1d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2#
!conv1d_2/kernel/Regularizer/mul/x�
conv1d_2/kernel/Regularizer/mulMul*conv1d_2/kernel/Regularizer/mul/x:output:0(conv1d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/mul�
conv1d_2/kernel/Regularizer/addAddV2*conv1d_2/kernel/Regularizer/Const:output:0#conv1d_2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
conv1d_2/kernel/Regularizer/add�
1conv1d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype023
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_2/kernel/Regularizer/SquareSquare9conv1d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@ 2$
"conv1d_2/kernel/Regularizer/Square�
#conv1d_2/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_2/kernel/Regularizer/Const_2�
!conv1d_2/kernel/Regularizer/Sum_1Sum&conv1d_2/kernel/Regularizer/Square:y:0,conv1d_2/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/Sum_1�
#conv1d_2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2%
#conv1d_2/kernel/Regularizer/mul_1/x�
!conv1d_2/kernel/Regularizer/mul_1Mul,conv1d_2/kernel/Regularizer/mul_1/x:output:0*conv1d_2/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/mul_1�
!conv1d_2/kernel/Regularizer/add_1AddV2#conv1d_2/kernel/Regularizer/add:z:0%conv1d_2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!conv1d_2/kernel/Regularizer/add_1�
IdentityIdentitytf.math.tanh/Tanh:y:0^BN1/batchnorm/ReadVariableOp^BN1/batchnorm/ReadVariableOp_1^BN1/batchnorm/ReadVariableOp_2!^BN1/batchnorm/mul/ReadVariableOp^BN2/batchnorm/ReadVariableOp^BN2/batchnorm/ReadVariableOp_1^BN2/batchnorm/ReadVariableOp_2!^BN2/batchnorm/mul/ReadVariableOp^BN3/batchnorm/ReadVariableOp^BN3/batchnorm/ReadVariableOp_1^BN3/batchnorm/ReadVariableOp_2!^BN3/batchnorm/mul/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/conv1d/ExpandDims_1/ReadVariableOp/^conv1d_1/kernel/Regularizer/Abs/ReadVariableOp2^conv1d_1/kernel/Regularizer/Square/ReadVariableOp ^conv1d_2/BiasAdd/ReadVariableOp,^conv1d_2/conv1d/ExpandDims_1/ReadVariableOp/^conv1d_2/kernel/Regularizer/Abs/ReadVariableOp2^conv1d_2/kernel/Regularizer/Square/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : 2<
BN1/batchnorm/ReadVariableOpBN1/batchnorm/ReadVariableOp2@
BN1/batchnorm/ReadVariableOp_1BN1/batchnorm/ReadVariableOp_12@
BN1/batchnorm/ReadVariableOp_2BN1/batchnorm/ReadVariableOp_22D
 BN1/batchnorm/mul/ReadVariableOp BN1/batchnorm/mul/ReadVariableOp2<
BN2/batchnorm/ReadVariableOpBN2/batchnorm/ReadVariableOp2@
BN2/batchnorm/ReadVariableOp_1BN2/batchnorm/ReadVariableOp_12@
BN2/batchnorm/ReadVariableOp_2BN2/batchnorm/ReadVariableOp_22D
 BN2/batchnorm/mul/ReadVariableOp BN2/batchnorm/mul/ReadVariableOp2<
BN3/batchnorm/ReadVariableOpBN3/batchnorm/ReadVariableOp2@
BN3/batchnorm/ReadVariableOp_1BN3/batchnorm/ReadVariableOp_12@
BN3/batchnorm/ReadVariableOp_2BN3/batchnorm/ReadVariableOp_22D
 BN3/batchnorm/mul/ReadVariableOp BN3/batchnorm/mul/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp2`
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp2f
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp1conv1d_1/kernel/Regularizer/Square/ReadVariableOp2B
conv1d_2/BiasAdd/ReadVariableOpconv1d_2/BiasAdd/ReadVariableOp2Z
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp2`
.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp.conv1d_2/kernel/Regularizer/Abs/ReadVariableOp2f
1conv1d_2/kernel/Regularizer/Square/ReadVariableOp1conv1d_2/kernel/Regularizer/Square/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
"__inference_BN2_layer_call_fn_8813

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *F
fAR?
=__inference_BN2_layer_call_and_return_conditional_losses_73922
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�	
�
?__inference_dense_layer_call_and_return_conditional_losses_8847

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
=__inference_BN1_layer_call_and_return_conditional_losses_8654

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOp�
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
batchnorm/add/y�
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:���������@2
batchnorm/mul_1�
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1�
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2�
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2�
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub�
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:���������@2
batchnorm/add_1�
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
G
+__inference_activation_1_layer_call_fn_8598

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_71962
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
B
&__inference_flatten_layer_call_fn_8837

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_74552
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� :S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�)
�
B__inference_conv1d_1_layer_call_and_return_conditional_losses_8579

inputsA
+conv1d_expanddims_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOp�.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp�1conv1d_1/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:���������@*
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@2	
BiasAdd�
!conv1d_1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!conv1d_1/kernel/Regularizer/Const�
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype020
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp�
conv1d_1/kernel/Regularizer/AbsAbs6conv1d_1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2!
conv1d_1/kernel/Regularizer/Abs�
#conv1d_1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_1/kernel/Regularizer/Const_1�
conv1d_1/kernel/Regularizer/SumSum#conv1d_1/kernel/Regularizer/Abs:y:0,conv1d_1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/Sum�
!conv1d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2#
!conv1d_1/kernel/Regularizer/mul/x�
conv1d_1/kernel/Regularizer/mulMul*conv1d_1/kernel/Regularizer/mul/x:output:0(conv1d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/mul�
conv1d_1/kernel/Regularizer/addAddV2*conv1d_1/kernel/Regularizer/Const:output:0#conv1d_1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
conv1d_1/kernel/Regularizer/add�
1conv1d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype023
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_1/kernel/Regularizer/SquareSquare9conv1d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2$
"conv1d_1/kernel/Regularizer/Square�
#conv1d_1/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_1/kernel/Regularizer/Const_2�
!conv1d_1/kernel/Regularizer/Sum_1Sum&conv1d_1/kernel/Regularizer/Square:y:0,conv1d_1/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/Sum_1�
#conv1d_1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2%
#conv1d_1/kernel/Regularizer/mul_1/x�
!conv1d_1/kernel/Regularizer/mul_1Mul,conv1d_1/kernel/Regularizer/mul_1/x:output:0*conv1d_1/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/mul_1�
!conv1d_1/kernel/Regularizer/add_1AddV2#conv1d_1/kernel/Regularizer/add:z:0%conv1d_1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!conv1d_1/kernel/Regularizer/add_1�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp/^conv1d_1/kernel/Regularizer/Abs/ReadVariableOp2^conv1d_1/kernel/Regularizer/Square/ReadVariableOp*
T0*+
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2`
.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp.conv1d_1/kernel/Regularizer/Abs/ReadVariableOp2f
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp1conv1d_1/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_dense_1_layer_call_fn_8967

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_76052
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
?
input_14
serving_default_input_1:0���������@
tf.math.tanh0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�s
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
layer-13
trainable_variables
regularization_losses
	variables
	keras_api

signatures
�__call__
+�&call_and_return_all_conditional_losses
�_default_save_signature"�n
_tf_keras_network�n{"name": "encoder", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "encoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 6]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Conv1D", "config": {"name": "conv1d_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2]}, "strides": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.009999999776482582, "l2": 0.009999999776482582}, "shared_object_id": 3}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_1", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_1", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_1", "inbound_nodes": [[["conv1d_1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BN1", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN1", "inbound_nodes": [[["activation_1", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.009999999776482582, "l2": 0.009999999776482582}, "shared_object_id": 3}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_2", "inbound_nodes": [[["BN1", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_2", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_2", "inbound_nodes": [[["conv1d_2", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BN2", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN2", "inbound_nodes": [[["activation_2", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["BN2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["flatten", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_3", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_3", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BN3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN3", "inbound_nodes": [[["activation_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["BN3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.tanh", "trainable": true, "dtype": "float32", "function": "math.tanh"}, "name": "tf.math.tanh", "inbound_nodes": [["dense_2", 0, 0, {"name": null}]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["tf.math.tanh", 0, 0]]}, "shared_object_id": 37, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 3, 6]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 6]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 3, 6]}, "float32", "input_1"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "encoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 6]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Conv1D", "config": {"name": "conv1d_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2]}, "strides": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.009999999776482582, "l2": 0.009999999776482582}, "shared_object_id": 3}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_1", "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "Activation", "config": {"name": "activation_1", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_1", "inbound_nodes": [[["conv1d_1", 0, 0, {}]]], "shared_object_id": 5}, {"class_name": "BatchNormalization", "config": {"name": "BN1", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 9}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN1", "inbound_nodes": [[["activation_1", 0, 0, {}]]], "shared_object_id": 10}, {"class_name": "Conv1D", "config": {"name": "conv1d_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.009999999776482582, "l2": 0.009999999776482582}, "shared_object_id": 3}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_2", "inbound_nodes": [[["BN1", 0, 0, {}]]], "shared_object_id": 13}, {"class_name": "Activation", "config": {"name": "activation_2", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_2", "inbound_nodes": [[["conv1d_2", 0, 0, {}]]], "shared_object_id": 14}, {"class_name": "BatchNormalization", "config": {"name": "BN2", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 16}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 18}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN2", "inbound_nodes": [[["activation_2", 0, 0, {}]]], "shared_object_id": 19}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["BN2", 0, 0, {}]]], "shared_object_id": 20}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["flatten", 0, 0, {}]]], "shared_object_id": 23}, {"class_name": "Activation", "config": {"name": "activation_3", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_3", "inbound_nodes": [[["dense", 0, 0, {}]]], "shared_object_id": 24}, {"class_name": "BatchNormalization", "config": {"name": "BN3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 26}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 28}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN3", "inbound_nodes": [[["activation_3", 0, 0, {}]]], "shared_object_id": 29}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 30}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 31}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["BN3", 0, 0, {}]]], "shared_object_id": 32}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 33}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 34}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["dense_1", 0, 0, {}]]], "shared_object_id": 35}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.tanh", "trainable": true, "dtype": "float32", "function": "math.tanh"}, "name": "tf.math.tanh", "inbound_nodes": [["dense_2", 0, 0, {"name": null}]], "shared_object_id": 36}], "input_layers": [["input_1", 0, 0]], "output_layers": [["tf.math.tanh", 0, 0]]}}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 6]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 6]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
�

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�

_tf_keras_layer�
{"name": "conv1d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "conv1d_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2]}, "strides": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.009999999776482582, "l2": 0.009999999776482582}, "shared_object_id": 3}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 6}}, "shared_object_id": 39}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 6]}}
�
trainable_variables
regularization_losses
	variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "activation_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_1", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["conv1d_1", 0, 0, {}]]], "shared_object_id": 5}
�

axis
	gamma
 beta
!moving_mean
"moving_variance
#trainable_variables
$regularization_losses
%	variables
&	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "BN1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "BN1", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 9}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["activation_1", 0, 0, {}]]], "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"2": 64}}, "shared_object_id": 40}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 64]}}
�

'kernel
(bias
)trainable_variables
*regularization_losses
+	variables
,	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�

_tf_keras_layer�
{"name": "conv1d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "conv1d_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.009999999776482582, "l2": 0.009999999776482582}, "shared_object_id": 3}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["BN1", 0, 0, {}]]], "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 64}}, "shared_object_id": 41}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 64]}}
�
-trainable_variables
.regularization_losses
/	variables
0	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "activation_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_2", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["conv1d_2", 0, 0, {}]]], "shared_object_id": 14}
�

1axis
	2gamma
3beta
4moving_mean
5moving_variance
6trainable_variables
7regularization_losses
8	variables
9	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "BN2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "BN2", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 16}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 18}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["activation_2", 0, 0, {}]]], "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"2": 32}}, "shared_object_id": 42}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 32]}}
�
:trainable_variables
;regularization_losses
<	variables
=	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["BN2", 0, 0, {}]]], "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 43}}
�

>kernel
?bias
@trainable_variables
Aregularization_losses
B	variables
C	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["flatten", 0, 0, {}]]], "shared_object_id": 23, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 44}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
�
Dtrainable_variables
Eregularization_losses
F	variables
G	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "activation_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_3", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["dense", 0, 0, {}]]], "shared_object_id": 24}
�

Haxis
	Igamma
Jbeta
Kmoving_mean
Lmoving_variance
Mtrainable_variables
Nregularization_losses
O	variables
P	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "BN3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "BN3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 26}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 28}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["activation_3", 0, 0, {}]]], "shared_object_id": 29, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 3}}, "shared_object_id": 45}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3]}}
�

Qkernel
Rbias
Strainable_variables
Tregularization_losses
U	variables
V	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 30}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 31}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["BN3", 0, 0, {}]]], "shared_object_id": 32, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 3}}, "shared_object_id": 46}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3]}}
�

Wkernel
Xbias
Ytrainable_variables
Zregularization_losses
[	variables
\	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 33}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 34}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_1", 0, 0, {}]]], "shared_object_id": 35, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2}}, "shared_object_id": 47}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2]}}
�
]	keras_api"�
_tf_keras_layer�{"name": "tf.math.tanh", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.tanh", "trainable": true, "dtype": "float32", "function": "math.tanh"}, "inbound_nodes": [["dense_2", 0, 0, {"name": null}]], "shared_object_id": 36}
�
0
1
2
 3
'4
(5
26
37
>8
?9
I10
J11
Q12
R13
W14
X15"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
0
1
2
 3
!4
"5
'6
(7
28
39
410
511
>12
?13
I14
J15
K16
L17
Q18
R19
W20
X21"
trackable_list_wrapper
�
^layer_metrics
trainable_variables
_non_trainable_variables
`metrics
regularization_losses
	variables

alayers
blayer_regularization_losses
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
%:#@2conv1d_1/kernel
:@2conv1d_1/bias
.
0
1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
clayer_metrics
trainable_variables
dnon_trainable_variables
emetrics
regularization_losses
	variables

flayers
glayer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
hlayer_metrics
trainable_variables
inon_trainable_variables
jmetrics
regularization_losses
	variables

klayers
llayer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:@2	BN1/gamma
:@2BN1/beta
:@ (2BN1/moving_mean
#:!@ (2BN1/moving_variance
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
 1
!2
"3"
trackable_list_wrapper
�
mlayer_metrics
#trainable_variables
nnon_trainable_variables
ometrics
$regularization_losses
%	variables

players
qlayer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
%:#@ 2conv1d_2/kernel
: 2conv1d_2/bias
.
'0
(1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
�
rlayer_metrics
)trainable_variables
snon_trainable_variables
tmetrics
*regularization_losses
+	variables

ulayers
vlayer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
wlayer_metrics
-trainable_variables
xnon_trainable_variables
ymetrics
.regularization_losses
/	variables

zlayers
{layer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
: 2	BN2/gamma
: 2BN2/beta
:  (2BN2/moving_mean
#:!  (2BN2/moving_variance
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
<
20
31
42
53"
trackable_list_wrapper
�
|layer_metrics
6trainable_variables
}non_trainable_variables
~metrics
7regularization_losses
8	variables

layers
 �layer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
:trainable_variables
�non_trainable_variables
�metrics
;regularization_losses
<	variables
�layers
 �layer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
: 2dense/kernel
:2
dense/bias
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
�
�layer_metrics
@trainable_variables
�non_trainable_variables
�metrics
Aregularization_losses
B	variables
�layers
 �layer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
Dtrainable_variables
�non_trainable_variables
�metrics
Eregularization_losses
F	variables
�layers
 �layer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:2	BN3/gamma
:2BN3/beta
: (2BN3/moving_mean
#:! (2BN3/moving_variance
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
I0
J1
K2
L3"
trackable_list_wrapper
�
�layer_metrics
Mtrainable_variables
�non_trainable_variables
�metrics
Nregularization_losses
O	variables
�layers
 �layer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 :2dense_1/kernel
:2dense_1/bias
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
�
�layer_metrics
Strainable_variables
�non_trainable_variables
�metrics
Tregularization_losses
U	variables
�layers
 �layer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 :2dense_2/kernel
:2dense_2/bias
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
�
�layer_metrics
Ytrainable_variables
�non_trainable_variables
�metrics
Zregularization_losses
[	variables
�layers
 �layer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
 "
trackable_dict_wrapper
J
!0
"1
42
53
K4
L5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�2�
&__inference_encoder_layer_call_fn_7911
&__inference_encoder_layer_call_fn_8051
&__inference_encoder_layer_call_fn_8485
&__inference_encoder_layer_call_fn_8534�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
A__inference_encoder_layer_call_and_return_conditional_losses_8308
A__inference_encoder_layer_call_and_return_conditional_losses_7679
A__inference_encoder_layer_call_and_return_conditional_losses_8436
A__inference_encoder_layer_call_and_return_conditional_losses_7770�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
__inference__wrapped_model_7141�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� **�'
%�"
input_1���������
�2�
'__inference_conv1d_1_layer_call_fn_8588�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_conv1d_1_layer_call_and_return_conditional_losses_8579�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_activation_1_layer_call_fn_8598�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_activation_1_layer_call_and_return_conditional_losses_8593�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
"__inference_BN1_layer_call_fn_8667
"__inference_BN1_layer_call_fn_8680�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
=__inference_BN1_layer_call_and_return_conditional_losses_8654
=__inference_BN1_layer_call_and_return_conditional_losses_8634�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
'__inference_conv1d_2_layer_call_fn_8734�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_conv1d_2_layer_call_and_return_conditional_losses_8725�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_activation_2_layer_call_fn_8744�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_activation_2_layer_call_and_return_conditional_losses_8739�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
"__inference_BN2_layer_call_fn_8826
"__inference_BN2_layer_call_fn_8813�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
=__inference_BN2_layer_call_and_return_conditional_losses_8780
=__inference_BN2_layer_call_and_return_conditional_losses_8800�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
&__inference_flatten_layer_call_fn_8837�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_flatten_layer_call_and_return_conditional_losses_8832�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
$__inference_dense_layer_call_fn_8856�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
?__inference_dense_layer_call_and_return_conditional_losses_8847�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_activation_3_layer_call_fn_8866�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_activation_3_layer_call_and_return_conditional_losses_8861�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
"__inference_BN3_layer_call_fn_8935
"__inference_BN3_layer_call_fn_8948�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
=__inference_BN3_layer_call_and_return_conditional_losses_8902
=__inference_BN3_layer_call_and_return_conditional_losses_8922�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
&__inference_dense_1_layer_call_fn_8967�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_dense_1_layer_call_and_return_conditional_losses_8958�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
&__inference_dense_2_layer_call_fn_8986�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_dense_2_layer_call_and_return_conditional_losses_8977�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
__inference_loss_fn_0_9006�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_1_9026�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
"__inference_signature_wrapper_8132input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
=__inference_BN1_layer_call_and_return_conditional_losses_8634j!" 7�4
-�*
$�!
inputs���������@
p
� ")�&
�
0���������@
� �
=__inference_BN1_layer_call_and_return_conditional_losses_8654j"! 7�4
-�*
$�!
inputs���������@
p 
� ")�&
�
0���������@
� �
"__inference_BN1_layer_call_fn_8667]!" 7�4
-�*
$�!
inputs���������@
p
� "����������@�
"__inference_BN1_layer_call_fn_8680]"! 7�4
-�*
$�!
inputs���������@
p 
� "����������@�
=__inference_BN2_layer_call_and_return_conditional_losses_8780j45237�4
-�*
$�!
inputs��������� 
p
� ")�&
�
0��������� 
� �
=__inference_BN2_layer_call_and_return_conditional_losses_8800j52437�4
-�*
$�!
inputs��������� 
p 
� ")�&
�
0��������� 
� �
"__inference_BN2_layer_call_fn_8813]45237�4
-�*
$�!
inputs��������� 
p
� "���������� �
"__inference_BN2_layer_call_fn_8826]52437�4
-�*
$�!
inputs��������� 
p 
� "���������� �
=__inference_BN3_layer_call_and_return_conditional_losses_8902bKLIJ3�0
)�&
 �
inputs���������
p
� "%�"
�
0���������
� �
=__inference_BN3_layer_call_and_return_conditional_losses_8922bLIKJ3�0
)�&
 �
inputs���������
p 
� "%�"
�
0���������
� {
"__inference_BN3_layer_call_fn_8935UKLIJ3�0
)�&
 �
inputs���������
p
� "����������{
"__inference_BN3_layer_call_fn_8948ULIKJ3�0
)�&
 �
inputs���������
p 
� "�����������
__inference__wrapped_model_7141�"! '(5243>?LIKJQRWX4�1
*�'
%�"
input_1���������
� ";�8
6
tf.math.tanh&�#
tf.math.tanh����������
F__inference_activation_1_layer_call_and_return_conditional_losses_8593`3�0
)�&
$�!
inputs���������@
� ")�&
�
0���������@
� �
+__inference_activation_1_layer_call_fn_8598S3�0
)�&
$�!
inputs���������@
� "����������@�
F__inference_activation_2_layer_call_and_return_conditional_losses_8739`3�0
)�&
$�!
inputs��������� 
� ")�&
�
0��������� 
� �
+__inference_activation_2_layer_call_fn_8744S3�0
)�&
$�!
inputs��������� 
� "���������� �
F__inference_activation_3_layer_call_and_return_conditional_losses_8861X/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� z
+__inference_activation_3_layer_call_fn_8866K/�,
%�"
 �
inputs���������
� "�����������
B__inference_conv1d_1_layer_call_and_return_conditional_losses_8579d3�0
)�&
$�!
inputs���������
� ")�&
�
0���������@
� �
'__inference_conv1d_1_layer_call_fn_8588W3�0
)�&
$�!
inputs���������
� "����������@�
B__inference_conv1d_2_layer_call_and_return_conditional_losses_8725d'(3�0
)�&
$�!
inputs���������@
� ")�&
�
0��������� 
� �
'__inference_conv1d_2_layer_call_fn_8734W'(3�0
)�&
$�!
inputs���������@
� "���������� �
A__inference_dense_1_layer_call_and_return_conditional_losses_8958\QR/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� y
&__inference_dense_1_layer_call_fn_8967OQR/�,
%�"
 �
inputs���������
� "�����������
A__inference_dense_2_layer_call_and_return_conditional_losses_8977\WX/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� y
&__inference_dense_2_layer_call_fn_8986OWX/�,
%�"
 �
inputs���������
� "�����������
?__inference_dense_layer_call_and_return_conditional_losses_8847\>?/�,
%�"
 �
inputs��������� 
� "%�"
�
0���������
� w
$__inference_dense_layer_call_fn_8856O>?/�,
%�"
 �
inputs��������� 
� "�����������
A__inference_encoder_layer_call_and_return_conditional_losses_7679}!" '(4523>?KLIJQRWX<�9
2�/
%�"
input_1���������
p

 
� "%�"
�
0���������
� �
A__inference_encoder_layer_call_and_return_conditional_losses_7770}"! '(5243>?LIKJQRWX<�9
2�/
%�"
input_1���������
p 

 
� "%�"
�
0���������
� �
A__inference_encoder_layer_call_and_return_conditional_losses_8308|!" '(4523>?KLIJQRWX;�8
1�.
$�!
inputs���������
p

 
� "%�"
�
0���������
� �
A__inference_encoder_layer_call_and_return_conditional_losses_8436|"! '(5243>?LIKJQRWX;�8
1�.
$�!
inputs���������
p 

 
� "%�"
�
0���������
� �
&__inference_encoder_layer_call_fn_7911p!" '(4523>?KLIJQRWX<�9
2�/
%�"
input_1���������
p

 
� "�����������
&__inference_encoder_layer_call_fn_8051p"! '(5243>?LIKJQRWX<�9
2�/
%�"
input_1���������
p 

 
� "�����������
&__inference_encoder_layer_call_fn_8485o!" '(4523>?KLIJQRWX;�8
1�.
$�!
inputs���������
p

 
� "�����������
&__inference_encoder_layer_call_fn_8534o"! '(5243>?LIKJQRWX;�8
1�.
$�!
inputs���������
p 

 
� "�����������
A__inference_flatten_layer_call_and_return_conditional_losses_8832\3�0
)�&
$�!
inputs��������� 
� "%�"
�
0��������� 
� y
&__inference_flatten_layer_call_fn_8837O3�0
)�&
$�!
inputs��������� 
� "���������� 9
__inference_loss_fn_0_9006�

� 
� "� 9
__inference_loss_fn_1_9026'�

� 
� "� �
"__inference_signature_wrapper_8132�"! '(5243>?LIKJQRWX?�<
� 
5�2
0
input_1%�"
input_1���������";�8
6
tf.math.tanh&�#
tf.math.tanh���������