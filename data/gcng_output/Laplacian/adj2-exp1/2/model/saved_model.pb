��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
;
Elu
features"T
activations"T"
Ttype:
2
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
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
�
SparseTensorDenseMatMul
	a_indices"Tindices
a_values"T
a_shape	
b"T
product"T"	
Ttype"
Tindicestype0	:
2	"
	adjoint_abool( "
	adjoint_bbool( 
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58��
x
net/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namenet/dense_1/bias
q
$net/dense_1/bias/Read/ReadVariableOpReadVariableOpnet/dense_1/bias*
_output_shapes
:*
dtype0
�
net/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*#
shared_namenet/dense_1/kernel
z
&net/dense_1/kernel/Read/ReadVariableOpReadVariableOpnet/dense_1/kernel*
_output_shapes
:	�*
dtype0
u
net/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namenet/dense/bias
n
"net/dense/bias/Read/ReadVariableOpReadVariableOpnet/dense/bias*
_output_shapes	
:�*
dtype0
}
net/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*!
shared_namenet/dense/kernel
v
$net/dense/kernel/Read/ReadVariableOpReadVariableOpnet/dense/kernel*
_output_shapes
:	 �*
dtype0
~
net/gcn_conv_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_namenet/gcn_conv_1/bias
w
'net/gcn_conv_1/bias/Read/ReadVariableOpReadVariableOpnet/gcn_conv_1/bias*
_output_shapes
: *
dtype0
�
net/gcn_conv_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_namenet/gcn_conv_1/kernel

)net/gcn_conv_1/kernel/Read/ReadVariableOpReadVariableOpnet/gcn_conv_1/kernel*
_output_shapes

:  *
dtype0
z
net/gcn_conv/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_namenet/gcn_conv/bias
s
%net/gcn_conv/bias/Read/ReadVariableOpReadVariableOpnet/gcn_conv/bias*
_output_shapes
: *
dtype0
�
net/gcn_conv/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *$
shared_namenet/gcn_conv/kernel
{
'net/gcn_conv/kernel/Read/ReadVariableOpReadVariableOpnet/gcn_conv/kernel*
_output_shapes

: *
dtype0
�
serving_default_args_0Placeholder*,
_output_shapes
:����������*
dtype0*!
shape:����������
{
serving_default_args_0_1Placeholder*'
_output_shapes
:���������*
dtype0	*
shape:���������
s
serving_default_args_0_2Placeholder*#
_output_shapes
:���������*
dtype0*
shape:���������
a
serving_default_args_0_3Placeholder*
_output_shapes
:*
dtype0	*
shape:
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_args_0serving_default_args_0_1serving_default_args_0_2serving_default_args_0_3net/gcn_conv/kernelnet/gcn_conv/biasnet/gcn_conv_1/kernelnet/gcn_conv_1/biasnet/dense/kernelnet/dense/biasnet/dense_1/kernelnet/dense_1/bias*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_734453

NoOpNoOp
�"
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�!
value�!B�! B�!
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	conv1
		conv2

flatten
fc1
fc2

signatures*
<
0
1
2
3
4
5
6
7*
<
0
1
2
3
4
5
6
7*

0
1* 
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%kwargs_keys

kernel
bias*
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses
,kwargs_keys

kernel
bias*
�
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses* 
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

kernel
bias*
�
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

kernel
bias*

?serving_default* 
SM
VARIABLE_VALUEnet/gcn_conv/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEnet/gcn_conv/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEnet/gcn_conv_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEnet/gcn_conv_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEnet/dense/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEnet/dense/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEnet/dense_1/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEnet/dense_1/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*

@trace_0* 

Atrace_0* 
* 
'
0
	1

2
3
4*
* 
* 
* 
* 
* 

0
1*

0
1*
	
0* 
�
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

Gtrace_0* 

Htrace_0* 
* 

0
1*

0
1*
	
0* 
�
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*

Ntrace_0* 

Otrace_0* 
* 
* 
* 
* 
�
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses* 

Utrace_0* 

Vtrace_0* 

0
1*

0
1*
* 
�
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

\trace_0* 

]trace_0* 

0
1*

0
1*
* 
�
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*

ctrace_0* 

dtrace_0* 
* 
* 
* 
* 
* 
* 
	
0* 
* 
* 
* 
* 
* 
* 
	
0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename'net/gcn_conv/kernel/Read/ReadVariableOp%net/gcn_conv/bias/Read/ReadVariableOp)net/gcn_conv_1/kernel/Read/ReadVariableOp'net/gcn_conv_1/bias/Read/ReadVariableOp$net/dense/kernel/Read/ReadVariableOp"net/dense/bias/Read/ReadVariableOp&net/dense_1/kernel/Read/ReadVariableOp$net/dense_1/bias/Read/ReadVariableOpConst*
Tin
2
*
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
GPU2*0J 8� *(
f#R!
__inference__traced_save_734879
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamenet/gcn_conv/kernelnet/gcn_conv/biasnet/gcn_conv_1/kernelnet/gcn_conv_1/biasnet/dense/kernelnet/dense/biasnet/dense_1/kernelnet/dense_1/bias*
Tin
2	*
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
GPU2*0J 8� *+
f&R$
"__inference__traced_restore_734913��
�6
�
D__inference_gcn_conv_layer_call_and_return_conditional_losses_734225

inputs
inputs_1	
inputs_2
inputs_3	1
shape_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�5net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp�transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:Q
unstackUnpackShape:output:0*
T0*
_output_shapes
: : : *	
numv
Shape_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

: *
dtype0X
Shape_1Const*
_output_shapes
:*
dtype0*
valueB"       S
	unstack_1UnpackShape_1:output:0*
T0*
_output_shapes
: : *	
num^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:���������x
transpose/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

: *
dtype0_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       z
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*
_output_shapes

: `
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ����f
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0*
_output_shapes

: h
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*'
_output_shapes
:��������� T
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�S
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B : �
Reshape_2/shapePackunstack:output:0Reshape_2/shape/1:output:0Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:w
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*,
_output_shapes
:���������� R
Shape_2/CastCastinputs_3*

DstT0*

SrcT0	*
_output_shapes
:I
Shape_3ShapeReshape_2:output:0*
T0*
_output_shapes
:e
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
transpose_1	TransposeReshape_2:output:0transpose_1/perm:output:0*
T0*,
_output_shapes
:� ���������]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape_3:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
stack/1Const*
_output_shapes
: *
dtype0*
valueB :
���������e
stackPackstrided_slice:output:0stack/1:output:0*
N*
T0*
_output_shapes
:h
	Reshape_3Reshapetranspose_1:y:0stack:output:0*
T0*(
_output_shapes
:�����������
/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulinputs_1inputs_2inputs_3Reshape_3:output:0*
T0*0
_output_shapes
:������������������_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_2/Cast:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape_3:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
	stack_1/2Const*
_output_shapes
: *
dtype0*
valueB :
����������
stack_1Packstrided_slice_1:output:0strided_slice_2:output:0stack_1/2:output:0*
N*
T0*
_output_shapes
:�
	Reshape_4Reshape9SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0stack_1:output:0*
T0*4
_output_shapes"
 :��������� ���������e
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_2	TransposeReshape_4:output:0transpose_2/perm:output:0*
T0*4
_output_shapes"
 :������������������ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddtranspose_2:y:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������ [
EluEluBiasAdd:output:0*
T0*4
_output_shapes"
 :������������������ �
5net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

: *
dtype0�
&net/gcn_conv/kernel/Regularizer/L2LossL2Loss=net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%net/gcn_conv/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#net/gcn_conv/kernel/Regularizer/mulMul.net/gcn_conv/kernel/Regularizer/mul/x:output:0/net/gcn_conv/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: m
IdentityIdentityElu:activations:0^NoOp*
T0*4
_output_shapes"
 :������������������ �
NoOpNoOp^BiasAdd/ReadVariableOp6^net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp^transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:����������:���������:���������:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp5net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_734453

args_0
args_0_1	
args_0_2
args_0_3	
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3:	 �
	unknown_4:	�
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallargs_0args_0_1args_0_2args_0_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_734151o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:����������:���������:���������:: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameargs_0:QM
'
_output_shapes
:���������
"
_user_specified_name
args_0_1:MI
#
_output_shapes
:���������
"
_user_specified_name
args_0_2:D@

_output_shapes
:
"
_user_specified_name
args_0_3
��
�
?__inference_net_layer_call_and_return_conditional_losses_734607
inputs_0

inputs	
inputs_1
inputs_2	:
(gcn_conv_shape_1_readvariableop_resource: 6
(gcn_conv_biasadd_readvariableop_resource: <
*gcn_conv_1_shape_1_readvariableop_resource:  8
*gcn_conv_1_biasadd_readvariableop_resource: 7
$dense_matmul_readvariableop_resource:	 �4
%dense_biasadd_readvariableop_resource:	�9
&dense_1_matmul_readvariableop_resource:	�5
'dense_1_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�gcn_conv/BiasAdd/ReadVariableOp�!gcn_conv/transpose/ReadVariableOp�!gcn_conv_1/BiasAdd/ReadVariableOp�#gcn_conv_1/transpose/ReadVariableOp�5net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp�7net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOpF
gcn_conv/ShapeShapeinputs_0*
T0*
_output_shapes
:c
gcn_conv/unstackUnpackgcn_conv/Shape:output:0*
T0*
_output_shapes
: : : *	
num�
gcn_conv/Shape_1/ReadVariableOpReadVariableOp(gcn_conv_shape_1_readvariableop_resource*
_output_shapes

: *
dtype0a
gcn_conv/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"       e
gcn_conv/unstack_1Unpackgcn_conv/Shape_1:output:0*
T0*
_output_shapes
: : *	
numg
gcn_conv/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   x
gcn_conv/ReshapeReshapeinputs_0gcn_conv/Reshape/shape:output:0*
T0*'
_output_shapes
:����������
!gcn_conv/transpose/ReadVariableOpReadVariableOp(gcn_conv_shape_1_readvariableop_resource*
_output_shapes

: *
dtype0h
gcn_conv/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       �
gcn_conv/transpose	Transpose)gcn_conv/transpose/ReadVariableOp:value:0 gcn_conv/transpose/perm:output:0*
T0*
_output_shapes

: i
gcn_conv/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   �����
gcn_conv/Reshape_1Reshapegcn_conv/transpose:y:0!gcn_conv/Reshape_1/shape:output:0*
T0*
_output_shapes

: �
gcn_conv/MatMulMatMulgcn_conv/Reshape:output:0gcn_conv/Reshape_1:output:0*
T0*'
_output_shapes
:��������� ]
gcn_conv/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�\
gcn_conv/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B : �
gcn_conv/Reshape_2/shapePackgcn_conv/unstack:output:0#gcn_conv/Reshape_2/shape/1:output:0#gcn_conv/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:�
gcn_conv/Reshape_2Reshapegcn_conv/MatMul:product:0!gcn_conv/Reshape_2/shape:output:0*
T0*,
_output_shapes
:���������� [
gcn_conv/Shape_2/CastCastinputs_2*

DstT0*

SrcT0	*
_output_shapes
:[
gcn_conv/Shape_3Shapegcn_conv/Reshape_2:output:0*
T0*
_output_shapes
:n
gcn_conv/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
gcn_conv/transpose_1	Transposegcn_conv/Reshape_2:output:0"gcn_conv/transpose_1/perm:output:0*
T0*,
_output_shapes
:� ���������f
gcn_conv/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:h
gcn_conv/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
gcn_conv/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
gcn_conv/strided_sliceStridedSlicegcn_conv/Shape_3:output:0%gcn_conv/strided_slice/stack:output:0'gcn_conv/strided_slice/stack_1:output:0'gcn_conv/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
gcn_conv/stack/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
gcn_conv/stackPackgcn_conv/strided_slice:output:0gcn_conv/stack/1:output:0*
N*
T0*
_output_shapes
:�
gcn_conv/Reshape_3Reshapegcn_conv/transpose_1:y:0gcn_conv/stack:output:0*
T0*(
_output_shapes
:�����������
8gcn_conv/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/Reshape_3:output:0*
T0*0
_output_shapes
:������������������h
gcn_conv/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 gcn_conv/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 gcn_conv/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
gcn_conv/strided_slice_1StridedSlicegcn_conv/Shape_2/Cast:y:0'gcn_conv/strided_slice_1/stack:output:0)gcn_conv/strided_slice_1/stack_1:output:0)gcn_conv/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
gcn_conv/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:j
 gcn_conv/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 gcn_conv/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
gcn_conv/strided_slice_2StridedSlicegcn_conv/Shape_3:output:0'gcn_conv/strided_slice_2/stack:output:0)gcn_conv/strided_slice_2/stack_1:output:0)gcn_conv/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
gcn_conv/stack_1/2Const*
_output_shapes
: *
dtype0*
valueB :
����������
gcn_conv/stack_1Pack!gcn_conv/strided_slice_1:output:0!gcn_conv/strided_slice_2:output:0gcn_conv/stack_1/2:output:0*
N*
T0*
_output_shapes
:�
gcn_conv/Reshape_4ReshapeBgcn_conv/SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0gcn_conv/stack_1:output:0*
T0*4
_output_shapes"
 :��������� ���������n
gcn_conv/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
gcn_conv/transpose_2	Transposegcn_conv/Reshape_4:output:0"gcn_conv/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :������������������ �
gcn_conv/BiasAdd/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
gcn_conv/BiasAddBiasAddgcn_conv/transpose_2:y:0'gcn_conv/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������ m
gcn_conv/EluElugcn_conv/BiasAdd:output:0*
T0*4
_output_shapes"
 :������������������ Z
gcn_conv_1/ShapeShapegcn_conv/Elu:activations:0*
T0*
_output_shapes
:g
gcn_conv_1/unstackUnpackgcn_conv_1/Shape:output:0*
T0*
_output_shapes
: : : *	
num�
!gcn_conv_1/Shape_1/ReadVariableOpReadVariableOp*gcn_conv_1_shape_1_readvariableop_resource*
_output_shapes

:  *
dtype0c
gcn_conv_1/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"        i
gcn_conv_1/unstack_1Unpackgcn_conv_1/Shape_1:output:0*
T0*
_output_shapes
: : *	
numi
gcn_conv_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
gcn_conv_1/ReshapeReshapegcn_conv/Elu:activations:0!gcn_conv_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��������� �
#gcn_conv_1/transpose/ReadVariableOpReadVariableOp*gcn_conv_1_shape_1_readvariableop_resource*
_output_shapes

:  *
dtype0j
gcn_conv_1/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       �
gcn_conv_1/transpose	Transpose+gcn_conv_1/transpose/ReadVariableOp:value:0"gcn_conv_1/transpose/perm:output:0*
T0*
_output_shapes

:  k
gcn_conv_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"    �����
gcn_conv_1/Reshape_1Reshapegcn_conv_1/transpose:y:0#gcn_conv_1/Reshape_1/shape:output:0*
T0*
_output_shapes

:  �
gcn_conv_1/MatMulMatMulgcn_conv_1/Reshape:output:0gcn_conv_1/Reshape_1:output:0*
T0*'
_output_shapes
:��������� ^
gcn_conv_1/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B : �
gcn_conv_1/Reshape_2/shapePackgcn_conv_1/unstack:output:0gcn_conv_1/unstack:output:1%gcn_conv_1/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:�
gcn_conv_1/Reshape_2Reshapegcn_conv_1/MatMul:product:0#gcn_conv_1/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :������������������ ]
gcn_conv_1/Shape_2/CastCastinputs_2*

DstT0*

SrcT0	*
_output_shapes
:_
gcn_conv_1/Shape_3Shapegcn_conv_1/Reshape_2:output:0*
T0*
_output_shapes
:p
gcn_conv_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
gcn_conv_1/transpose_1	Transposegcn_conv_1/Reshape_2:output:0$gcn_conv_1/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :��������� ���������h
gcn_conv_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:j
 gcn_conv_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 gcn_conv_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
gcn_conv_1/strided_sliceStridedSlicegcn_conv_1/Shape_3:output:0'gcn_conv_1/strided_slice/stack:output:0)gcn_conv_1/strided_slice/stack_1:output:0)gcn_conv_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
gcn_conv_1/stack/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
gcn_conv_1/stackPack!gcn_conv_1/strided_slice:output:0gcn_conv_1/stack/1:output:0*
N*
T0*
_output_shapes
:�
gcn_conv_1/Reshape_3Reshapegcn_conv_1/transpose_1:y:0gcn_conv_1/stack:output:0*
T0*0
_output_shapes
:�������������������
:gcn_conv_1/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv_1/Reshape_3:output:0*
T0*0
_output_shapes
:������������������j
 gcn_conv_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"gcn_conv_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"gcn_conv_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
gcn_conv_1/strided_slice_1StridedSlicegcn_conv_1/Shape_2/Cast:y:0)gcn_conv_1/strided_slice_1/stack:output:0+gcn_conv_1/strided_slice_1/stack_1:output:0+gcn_conv_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
 gcn_conv_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:l
"gcn_conv_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"gcn_conv_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
gcn_conv_1/strided_slice_2StridedSlicegcn_conv_1/Shape_3:output:0)gcn_conv_1/strided_slice_2/stack:output:0+gcn_conv_1/strided_slice_2/stack_1:output:0+gcn_conv_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
gcn_conv_1/stack_1/2Const*
_output_shapes
: *
dtype0*
valueB :
����������
gcn_conv_1/stack_1Pack#gcn_conv_1/strided_slice_1:output:0#gcn_conv_1/strided_slice_2:output:0gcn_conv_1/stack_1/2:output:0*
N*
T0*
_output_shapes
:�
gcn_conv_1/Reshape_4ReshapeDgcn_conv_1/SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0gcn_conv_1/stack_1:output:0*
T0*4
_output_shapes"
 :��������� ���������p
gcn_conv_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
gcn_conv_1/transpose_2	Transposegcn_conv_1/Reshape_4:output:0$gcn_conv_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :������������������ �
!gcn_conv_1/BiasAdd/ReadVariableOpReadVariableOp*gcn_conv_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
gcn_conv_1/BiasAddBiasAddgcn_conv_1/transpose_2:y:0)gcn_conv_1/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������ q
gcn_conv_1/EluElugcn_conv_1/BiasAdd:output:0*
T0*4
_output_shapes"
 :������������������ p
%global_sum_pool/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
global_sum_pool/SumSumgcn_conv_1/Elu:activations:0.global_sum_pool/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:��������� �
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
dense/MatMulMatMulglobal_sum_pool/Sum:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:����������
5net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp(gcn_conv_shape_1_readvariableop_resource*
_output_shapes

: *
dtype0�
&net/gcn_conv/kernel/Regularizer/L2LossL2Loss=net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%net/gcn_conv/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#net/gcn_conv/kernel/Regularizer/mulMul.net/gcn_conv/kernel/Regularizer/mul/x:output:0/net/gcn_conv/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
7net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp*gcn_conv_1_shape_1_readvariableop_resource*
_output_shapes

:  *
dtype0�
(net/gcn_conv_1/kernel/Regularizer/L2LossL2Loss?net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'net/gcn_conv_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
%net/gcn_conv_1/kernel/Regularizer/mulMul0net/gcn_conv_1/kernel/Regularizer/mul/x:output:01net/gcn_conv_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp ^gcn_conv/BiasAdd/ReadVariableOp"^gcn_conv/transpose/ReadVariableOp"^gcn_conv_1/BiasAdd/ReadVariableOp$^gcn_conv_1/transpose/ReadVariableOp6^net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp8^net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:����������:���������:���������:: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2B
gcn_conv/BiasAdd/ReadVariableOpgcn_conv/BiasAdd/ReadVariableOp2F
!gcn_conv/transpose/ReadVariableOp!gcn_conv/transpose/ReadVariableOp2F
!gcn_conv_1/BiasAdd/ReadVariableOp!gcn_conv_1/BiasAdd/ReadVariableOp2J
#gcn_conv_1/transpose/ReadVariableOp#gcn_conv_1/transpose/ReadVariableOp2n
5net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp5net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp2r
7net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOp7net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOp:V R
,
_output_shapes
:����������
"
_user_specified_name
inputs_0:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
�6
�
F__inference_gcn_conv_1_layer_call_and_return_conditional_losses_734291

inputs
inputs_1	
inputs_2
inputs_3	1
shape_1_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�7net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOp�transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:Q
unstackUnpackShape:output:0*
T0*
_output_shapes
: : : *	
numv
Shape_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:  *
dtype0X
Shape_1Const*
_output_shapes
:*
dtype0*
valueB"        S
	unstack_1UnpackShape_1:output:0*
T0*
_output_shapes
: : *	
num^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����    d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:��������� x
transpose/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:  *
dtype0_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       z
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*
_output_shapes

:  `
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ����f
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0*
_output_shapes

:  h
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*'
_output_shapes
:��������� S
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B : �
Reshape_2/shapePackunstack:output:0unstack:output:1Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :������������������ R
Shape_2/CastCastinputs_3*

DstT0*

SrcT0	*
_output_shapes
:I
Shape_3ShapeReshape_2:output:0*
T0*
_output_shapes
:e
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	TransposeReshape_2:output:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :��������� ���������]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape_3:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
stack/1Const*
_output_shapes
: *
dtype0*
valueB :
���������e
stackPackstrided_slice:output:0stack/1:output:0*
N*
T0*
_output_shapes
:p
	Reshape_3Reshapetranspose_1:y:0stack:output:0*
T0*0
_output_shapes
:�������������������
/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulinputs_1inputs_2inputs_3Reshape_3:output:0*
T0*0
_output_shapes
:������������������_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_2/Cast:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape_3:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
	stack_1/2Const*
_output_shapes
: *
dtype0*
valueB :
����������
stack_1Packstrided_slice_1:output:0strided_slice_2:output:0stack_1/2:output:0*
N*
T0*
_output_shapes
:�
	Reshape_4Reshape9SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0stack_1:output:0*
T0*4
_output_shapes"
 :��������� ���������e
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_2	TransposeReshape_4:output:0transpose_2/perm:output:0*
T0*4
_output_shapes"
 :������������������ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddtranspose_2:y:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������ [
EluEluBiasAdd:output:0*
T0*4
_output_shapes"
 :������������������ �
7net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:  *
dtype0�
(net/gcn_conv_1/kernel/Regularizer/L2LossL2Loss?net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'net/gcn_conv_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
%net/gcn_conv_1/kernel/Regularizer/mulMul0net/gcn_conv_1/kernel/Regularizer/mul/x:output:01net/gcn_conv_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: m
IdentityIdentityElu:activations:0^NoOp*
T0*4
_output_shapes"
 :������������������ �
NoOpNoOp^BiasAdd/ReadVariableOp8^net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOp^transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:������������������ :���������:���������:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2r
7net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOp7net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:\ X
4
_output_shapes"
 :������������������ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_0_734624P
>net_gcn_conv_kernel_regularizer_l2loss_readvariableop_resource: 
identity��5net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp�
5net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp>net_gcn_conv_kernel_regularizer_l2loss_readvariableop_resource*
_output_shapes

: *
dtype0�
&net/gcn_conv/kernel/Regularizer/L2LossL2Loss=net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%net/gcn_conv/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#net/gcn_conv/kernel/Regularizer/mulMul.net/gcn_conv/kernel/Regularizer/mul/x:output:0/net/gcn_conv/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: e
IdentityIdentity'net/gcn_conv/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: ~
NoOpNoOp6^net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2n
5net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp5net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp
�
�
(__inference_dense_1_layer_call_fn_734818

inputs
unknown:	�
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
GPU2*0J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_734333o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
g
K__inference_global_sum_pool_layer_call_and_return_conditional_losses_734789

inputs
identity`
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������d
SumSuminputsSum/reduction_indices:output:0*
T0*'
_output_shapes
:��������� T
IdentityIdentitySum:output:0*
T0*'
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :������������������ :\ X
4
_output_shapes"
 :������������������ 
 
_user_specified_nameinputs
�)
�
?__inference_net_layer_call_and_return_conditional_losses_734348

inputs
inputs_1	
inputs_2
inputs_3	!
gcn_conv_734226: 
gcn_conv_734228: #
gcn_conv_1_734292:  
gcn_conv_1_734294: 
dense_734317:	 �
dense_734319:	�!
dense_1_734334:	�
dense_1_734336:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall� gcn_conv/StatefulPartitionedCall�"gcn_conv_1/StatefulPartitionedCall�5net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp�7net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOp�
 gcn_conv/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3gcn_conv_734226gcn_conv_734228*
Tin

2		*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_gcn_conv_layer_call_and_return_conditional_losses_734225�
"gcn_conv_1/StatefulPartitionedCallStatefulPartitionedCall)gcn_conv/StatefulPartitionedCall:output:0inputs_1inputs_2inputs_3gcn_conv_1_734292gcn_conv_1_734294*
Tin

2		*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_gcn_conv_1_layer_call_and_return_conditional_losses_734291�
global_sum_pool/PartitionedCallPartitionedCall+gcn_conv_1/StatefulPartitionedCall:output:0*
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
GPU2*0J 8� *T
fORM
K__inference_global_sum_pool_layer_call_and_return_conditional_losses_734303�
dense/StatefulPartitionedCallStatefulPartitionedCall(global_sum_pool/PartitionedCall:output:0dense_734317dense_734319*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_734316�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_734334dense_1_734336*
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
GPU2*0J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_734333�
5net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpgcn_conv_734226*
_output_shapes

: *
dtype0�
&net/gcn_conv/kernel/Regularizer/L2LossL2Loss=net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%net/gcn_conv/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#net/gcn_conv/kernel/Regularizer/mulMul.net/gcn_conv/kernel/Regularizer/mul/x:output:0/net/gcn_conv/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
7net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpgcn_conv_1_734292*
_output_shapes

:  *
dtype0�
(net/gcn_conv_1/kernel/Regularizer/L2LossL2Loss?net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'net/gcn_conv_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
%net/gcn_conv_1/kernel/Regularizer/mulMul0net/gcn_conv_1/kernel/Regularizer/mul/x:output:01net/gcn_conv_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall!^gcn_conv/StatefulPartitionedCall#^gcn_conv_1/StatefulPartitionedCall6^net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp8^net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:����������:���������:���������:: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2D
 gcn_conv/StatefulPartitionedCall gcn_conv/StatefulPartitionedCall2H
"gcn_conv_1/StatefulPartitionedCall"gcn_conv_1/StatefulPartitionedCall2n
5net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp5net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp2r
7net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOp7net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
�

�
A__inference_dense_layer_call_and_return_conditional_losses_734809

inputs1
matmul_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
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
�
g
K__inference_global_sum_pool_layer_call_and_return_conditional_losses_734303

inputs
identity`
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������d
SumSuminputsSum/reduction_indices:output:0*
T0*'
_output_shapes
:��������� T
IdentityIdentitySum:output:0*
T0*'
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :������������������ :\ X
4
_output_shapes"
 :������������������ 
 
_user_specified_nameinputs
�

�
+__inference_gcn_conv_1_layer_call_fn_734718
inputs_0

inputs	
inputs_1
inputs_2	
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2unknown	unknown_0*
Tin

2		*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_gcn_conv_1_layer_call_and_return_conditional_losses_734291|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:������������������ :���������:���������:: : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������ 
"
_user_specified_name
inputs_0:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
�6
�
F__inference_gcn_conv_1_layer_call_and_return_conditional_losses_734778
inputs_0

inputs	
inputs_1
inputs_2	1
shape_1_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�7net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOp�transpose/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:Q
unstackUnpackShape:output:0*
T0*
_output_shapes
: : : *	
numv
Shape_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:  *
dtype0X
Shape_1Const*
_output_shapes
:*
dtype0*
valueB"        S
	unstack_1UnpackShape_1:output:0*
T0*
_output_shapes
: : *	
num^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����    f
ReshapeReshapeinputs_0Reshape/shape:output:0*
T0*'
_output_shapes
:��������� x
transpose/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:  *
dtype0_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       z
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*
_output_shapes

:  `
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ����f
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0*
_output_shapes

:  h
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*'
_output_shapes
:��������� S
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B : �
Reshape_2/shapePackunstack:output:0unstack:output:1Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :������������������ R
Shape_2/CastCastinputs_2*

DstT0*

SrcT0	*
_output_shapes
:I
Shape_3ShapeReshape_2:output:0*
T0*
_output_shapes
:e
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	TransposeReshape_2:output:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :��������� ���������]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape_3:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
stack/1Const*
_output_shapes
: *
dtype0*
valueB :
���������e
stackPackstrided_slice:output:0stack/1:output:0*
N*
T0*
_output_shapes
:p
	Reshape_3Reshapetranspose_1:y:0stack:output:0*
T0*0
_output_shapes
:�������������������
/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2Reshape_3:output:0*
T0*0
_output_shapes
:������������������_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_2/Cast:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape_3:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
	stack_1/2Const*
_output_shapes
: *
dtype0*
valueB :
����������
stack_1Packstrided_slice_1:output:0strided_slice_2:output:0stack_1/2:output:0*
N*
T0*
_output_shapes
:�
	Reshape_4Reshape9SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0stack_1:output:0*
T0*4
_output_shapes"
 :��������� ���������e
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_2	TransposeReshape_4:output:0transpose_2/perm:output:0*
T0*4
_output_shapes"
 :������������������ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddtranspose_2:y:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������ [
EluEluBiasAdd:output:0*
T0*4
_output_shapes"
 :������������������ �
7net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:  *
dtype0�
(net/gcn_conv_1/kernel/Regularizer/L2LossL2Loss?net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'net/gcn_conv_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
%net/gcn_conv_1/kernel/Regularizer/mulMul0net/gcn_conv_1/kernel/Regularizer/mul/x:output:01net/gcn_conv_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: m
IdentityIdentityElu:activations:0^NoOp*
T0*4
_output_shapes"
 :������������������ �
NoOpNoOp^BiasAdd/ReadVariableOp8^net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOp^transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:������������������ :���������:���������:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2r
7net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOp7net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:^ Z
4
_output_shapes"
 :������������������ 
"
_user_specified_name
inputs_0:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
�
�
$__inference_net_layer_call_fn_734477
inputs_0

inputs	
inputs_1
inputs_2	
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3:	 �
	unknown_4:	�
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *H
fCRA
?__inference_net_layer_call_and_return_conditional_losses_734348o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:����������:���������:���������:: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:����������
"
_user_specified_name
inputs_0:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
�

�
C__inference_dense_1_layer_call_and_return_conditional_losses_734829

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
!__inference__wrapped_model_734151

args_0
args_0_1	
args_0_2
args_0_3	>
,net_gcn_conv_shape_1_readvariableop_resource: :
,net_gcn_conv_biasadd_readvariableop_resource: @
.net_gcn_conv_1_shape_1_readvariableop_resource:  <
.net_gcn_conv_1_biasadd_readvariableop_resource: ;
(net_dense_matmul_readvariableop_resource:	 �8
)net_dense_biasadd_readvariableop_resource:	�=
*net_dense_1_matmul_readvariableop_resource:	�9
+net_dense_1_biasadd_readvariableop_resource:
identity�� net/dense/BiasAdd/ReadVariableOp�net/dense/MatMul/ReadVariableOp�"net/dense_1/BiasAdd/ReadVariableOp�!net/dense_1/MatMul/ReadVariableOp�#net/gcn_conv/BiasAdd/ReadVariableOp�%net/gcn_conv/transpose/ReadVariableOp�%net/gcn_conv_1/BiasAdd/ReadVariableOp�'net/gcn_conv_1/transpose/ReadVariableOpH
net/gcn_conv/ShapeShapeargs_0*
T0*
_output_shapes
:k
net/gcn_conv/unstackUnpacknet/gcn_conv/Shape:output:0*
T0*
_output_shapes
: : : *	
num�
#net/gcn_conv/Shape_1/ReadVariableOpReadVariableOp,net_gcn_conv_shape_1_readvariableop_resource*
_output_shapes

: *
dtype0e
net/gcn_conv/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"       m
net/gcn_conv/unstack_1Unpacknet/gcn_conv/Shape_1:output:0*
T0*
_output_shapes
: : *	
numk
net/gcn_conv/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ~
net/gcn_conv/ReshapeReshapeargs_0#net/gcn_conv/Reshape/shape:output:0*
T0*'
_output_shapes
:����������
%net/gcn_conv/transpose/ReadVariableOpReadVariableOp,net_gcn_conv_shape_1_readvariableop_resource*
_output_shapes

: *
dtype0l
net/gcn_conv/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       �
net/gcn_conv/transpose	Transpose-net/gcn_conv/transpose/ReadVariableOp:value:0$net/gcn_conv/transpose/perm:output:0*
T0*
_output_shapes

: m
net/gcn_conv/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   �����
net/gcn_conv/Reshape_1Reshapenet/gcn_conv/transpose:y:0%net/gcn_conv/Reshape_1/shape:output:0*
T0*
_output_shapes

: �
net/gcn_conv/MatMulMatMulnet/gcn_conv/Reshape:output:0net/gcn_conv/Reshape_1:output:0*
T0*'
_output_shapes
:��������� a
net/gcn_conv/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�`
net/gcn_conv/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B : �
net/gcn_conv/Reshape_2/shapePacknet/gcn_conv/unstack:output:0'net/gcn_conv/Reshape_2/shape/1:output:0'net/gcn_conv/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:�
net/gcn_conv/Reshape_2Reshapenet/gcn_conv/MatMul:product:0%net/gcn_conv/Reshape_2/shape:output:0*
T0*,
_output_shapes
:���������� _
net/gcn_conv/Shape_2/CastCastargs_0_3*

DstT0*

SrcT0	*
_output_shapes
:c
net/gcn_conv/Shape_3Shapenet/gcn_conv/Reshape_2:output:0*
T0*
_output_shapes
:r
net/gcn_conv/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
net/gcn_conv/transpose_1	Transposenet/gcn_conv/Reshape_2:output:0&net/gcn_conv/transpose_1/perm:output:0*
T0*,
_output_shapes
:� ���������j
 net/gcn_conv/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:l
"net/gcn_conv/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"net/gcn_conv/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
net/gcn_conv/strided_sliceStridedSlicenet/gcn_conv/Shape_3:output:0)net/gcn_conv/strided_slice/stack:output:0+net/gcn_conv/strided_slice/stack_1:output:0+net/gcn_conv/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
net/gcn_conv/stack/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
net/gcn_conv/stackPack#net/gcn_conv/strided_slice:output:0net/gcn_conv/stack/1:output:0*
N*
T0*
_output_shapes
:�
net/gcn_conv/Reshape_3Reshapenet/gcn_conv/transpose_1:y:0net/gcn_conv/stack:output:0*
T0*(
_output_shapes
:�����������
<net/gcn_conv/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulargs_0_1args_0_2args_0_3net/gcn_conv/Reshape_3:output:0*
T0*0
_output_shapes
:������������������l
"net/gcn_conv/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$net/gcn_conv/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$net/gcn_conv/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
net/gcn_conv/strided_slice_1StridedSlicenet/gcn_conv/Shape_2/Cast:y:0+net/gcn_conv/strided_slice_1/stack:output:0-net/gcn_conv/strided_slice_1/stack_1:output:0-net/gcn_conv/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
"net/gcn_conv/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$net/gcn_conv/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$net/gcn_conv/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
net/gcn_conv/strided_slice_2StridedSlicenet/gcn_conv/Shape_3:output:0+net/gcn_conv/strided_slice_2/stack:output:0-net/gcn_conv/strided_slice_2/stack_1:output:0-net/gcn_conv/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
net/gcn_conv/stack_1/2Const*
_output_shapes
: *
dtype0*
valueB :
����������
net/gcn_conv/stack_1Pack%net/gcn_conv/strided_slice_1:output:0%net/gcn_conv/strided_slice_2:output:0net/gcn_conv/stack_1/2:output:0*
N*
T0*
_output_shapes
:�
net/gcn_conv/Reshape_4ReshapeFnet/gcn_conv/SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0net/gcn_conv/stack_1:output:0*
T0*4
_output_shapes"
 :��������� ���������r
net/gcn_conv/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
net/gcn_conv/transpose_2	Transposenet/gcn_conv/Reshape_4:output:0&net/gcn_conv/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :������������������ �
#net/gcn_conv/BiasAdd/ReadVariableOpReadVariableOp,net_gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
net/gcn_conv/BiasAddBiasAddnet/gcn_conv/transpose_2:y:0+net/gcn_conv/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������ u
net/gcn_conv/EluElunet/gcn_conv/BiasAdd:output:0*
T0*4
_output_shapes"
 :������������������ b
net/gcn_conv_1/ShapeShapenet/gcn_conv/Elu:activations:0*
T0*
_output_shapes
:o
net/gcn_conv_1/unstackUnpacknet/gcn_conv_1/Shape:output:0*
T0*
_output_shapes
: : : *	
num�
%net/gcn_conv_1/Shape_1/ReadVariableOpReadVariableOp.net_gcn_conv_1_shape_1_readvariableop_resource*
_output_shapes

:  *
dtype0g
net/gcn_conv_1/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"        q
net/gcn_conv_1/unstack_1Unpacknet/gcn_conv_1/Shape_1:output:0*
T0*
_output_shapes
: : *	
numm
net/gcn_conv_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
net/gcn_conv_1/ReshapeReshapenet/gcn_conv/Elu:activations:0%net/gcn_conv_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��������� �
'net/gcn_conv_1/transpose/ReadVariableOpReadVariableOp.net_gcn_conv_1_shape_1_readvariableop_resource*
_output_shapes

:  *
dtype0n
net/gcn_conv_1/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       �
net/gcn_conv_1/transpose	Transpose/net/gcn_conv_1/transpose/ReadVariableOp:value:0&net/gcn_conv_1/transpose/perm:output:0*
T0*
_output_shapes

:  o
net/gcn_conv_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"    �����
net/gcn_conv_1/Reshape_1Reshapenet/gcn_conv_1/transpose:y:0'net/gcn_conv_1/Reshape_1/shape:output:0*
T0*
_output_shapes

:  �
net/gcn_conv_1/MatMulMatMulnet/gcn_conv_1/Reshape:output:0!net/gcn_conv_1/Reshape_1:output:0*
T0*'
_output_shapes
:��������� b
 net/gcn_conv_1/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B : �
net/gcn_conv_1/Reshape_2/shapePacknet/gcn_conv_1/unstack:output:0net/gcn_conv_1/unstack:output:1)net/gcn_conv_1/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:�
net/gcn_conv_1/Reshape_2Reshapenet/gcn_conv_1/MatMul:product:0'net/gcn_conv_1/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :������������������ a
net/gcn_conv_1/Shape_2/CastCastargs_0_3*

DstT0*

SrcT0	*
_output_shapes
:g
net/gcn_conv_1/Shape_3Shape!net/gcn_conv_1/Reshape_2:output:0*
T0*
_output_shapes
:t
net/gcn_conv_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
net/gcn_conv_1/transpose_1	Transpose!net/gcn_conv_1/Reshape_2:output:0(net/gcn_conv_1/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :��������� ���������l
"net/gcn_conv_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$net/gcn_conv_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$net/gcn_conv_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
net/gcn_conv_1/strided_sliceStridedSlicenet/gcn_conv_1/Shape_3:output:0+net/gcn_conv_1/strided_slice/stack:output:0-net/gcn_conv_1/strided_slice/stack_1:output:0-net/gcn_conv_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
net/gcn_conv_1/stack/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
net/gcn_conv_1/stackPack%net/gcn_conv_1/strided_slice:output:0net/gcn_conv_1/stack/1:output:0*
N*
T0*
_output_shapes
:�
net/gcn_conv_1/Reshape_3Reshapenet/gcn_conv_1/transpose_1:y:0net/gcn_conv_1/stack:output:0*
T0*0
_output_shapes
:�������������������
>net/gcn_conv_1/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulargs_0_1args_0_2args_0_3!net/gcn_conv_1/Reshape_3:output:0*
T0*0
_output_shapes
:������������������n
$net/gcn_conv_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&net/gcn_conv_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&net/gcn_conv_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
net/gcn_conv_1/strided_slice_1StridedSlicenet/gcn_conv_1/Shape_2/Cast:y:0-net/gcn_conv_1/strided_slice_1/stack:output:0/net/gcn_conv_1/strided_slice_1/stack_1:output:0/net/gcn_conv_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
$net/gcn_conv_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:p
&net/gcn_conv_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&net/gcn_conv_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
net/gcn_conv_1/strided_slice_2StridedSlicenet/gcn_conv_1/Shape_3:output:0-net/gcn_conv_1/strided_slice_2/stack:output:0/net/gcn_conv_1/strided_slice_2/stack_1:output:0/net/gcn_conv_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
net/gcn_conv_1/stack_1/2Const*
_output_shapes
: *
dtype0*
valueB :
����������
net/gcn_conv_1/stack_1Pack'net/gcn_conv_1/strided_slice_1:output:0'net/gcn_conv_1/strided_slice_2:output:0!net/gcn_conv_1/stack_1/2:output:0*
N*
T0*
_output_shapes
:�
net/gcn_conv_1/Reshape_4ReshapeHnet/gcn_conv_1/SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0net/gcn_conv_1/stack_1:output:0*
T0*4
_output_shapes"
 :��������� ���������t
net/gcn_conv_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
net/gcn_conv_1/transpose_2	Transpose!net/gcn_conv_1/Reshape_4:output:0(net/gcn_conv_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :������������������ �
%net/gcn_conv_1/BiasAdd/ReadVariableOpReadVariableOp.net_gcn_conv_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
net/gcn_conv_1/BiasAddBiasAddnet/gcn_conv_1/transpose_2:y:0-net/gcn_conv_1/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������ y
net/gcn_conv_1/EluElunet/gcn_conv_1/BiasAdd:output:0*
T0*4
_output_shapes"
 :������������������ t
)net/global_sum_pool/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
net/global_sum_pool/SumSum net/gcn_conv_1/Elu:activations:02net/global_sum_pool/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:��������� �
net/dense/MatMul/ReadVariableOpReadVariableOp(net_dense_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
net/dense/MatMulMatMul net/global_sum_pool/Sum:output:0'net/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 net/dense/BiasAdd/ReadVariableOpReadVariableOp)net_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
net/dense/BiasAddBiasAddnet/dense/MatMul:product:0(net/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
net/dense/ReluRelunet/dense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
!net/dense_1/MatMul/ReadVariableOpReadVariableOp*net_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
net/dense_1/MatMulMatMulnet/dense/Relu:activations:0)net/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
"net/dense_1/BiasAdd/ReadVariableOpReadVariableOp+net_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
net/dense_1/BiasAddBiasAddnet/dense_1/MatMul:product:0*net/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n
net/dense_1/SigmoidSigmoidnet/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������f
IdentityIdentitynet/dense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^net/dense/BiasAdd/ReadVariableOp ^net/dense/MatMul/ReadVariableOp#^net/dense_1/BiasAdd/ReadVariableOp"^net/dense_1/MatMul/ReadVariableOp$^net/gcn_conv/BiasAdd/ReadVariableOp&^net/gcn_conv/transpose/ReadVariableOp&^net/gcn_conv_1/BiasAdd/ReadVariableOp(^net/gcn_conv_1/transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:����������:���������:���������:: : : : : : : : 2D
 net/dense/BiasAdd/ReadVariableOp net/dense/BiasAdd/ReadVariableOp2B
net/dense/MatMul/ReadVariableOpnet/dense/MatMul/ReadVariableOp2H
"net/dense_1/BiasAdd/ReadVariableOp"net/dense_1/BiasAdd/ReadVariableOp2F
!net/dense_1/MatMul/ReadVariableOp!net/dense_1/MatMul/ReadVariableOp2J
#net/gcn_conv/BiasAdd/ReadVariableOp#net/gcn_conv/BiasAdd/ReadVariableOp2N
%net/gcn_conv/transpose/ReadVariableOp%net/gcn_conv/transpose/ReadVariableOp2N
%net/gcn_conv_1/BiasAdd/ReadVariableOp%net/gcn_conv_1/BiasAdd/ReadVariableOp2R
'net/gcn_conv_1/transpose/ReadVariableOp'net/gcn_conv_1/transpose/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameargs_0:OK
'
_output_shapes
:���������
 
_user_specified_nameargs_0:KG
#
_output_shapes
:���������
 
_user_specified_nameargs_0:B>

_output_shapes
:
 
_user_specified_nameargs_0
�	
�
__inference_loss_fn_1_734633R
@net_gcn_conv_1_kernel_regularizer_l2loss_readvariableop_resource:  
identity��7net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOp�
7net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp@net_gcn_conv_1_kernel_regularizer_l2loss_readvariableop_resource*
_output_shapes

:  *
dtype0�
(net/gcn_conv_1/kernel/Regularizer/L2LossL2Loss?net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'net/gcn_conv_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
%net/gcn_conv_1/kernel/Regularizer/mulMul0net/gcn_conv_1/kernel/Regularizer/mul/x:output:01net/gcn_conv_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentity)net/gcn_conv_1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp8^net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2r
7net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOp7net/gcn_conv_1/kernel/Regularizer/L2Loss/ReadVariableOp
�6
�
D__inference_gcn_conv_layer_call_and_return_conditional_losses_734706
inputs_0

inputs	
inputs_1
inputs_2	1
shape_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�5net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp�transpose/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:Q
unstackUnpackShape:output:0*
T0*
_output_shapes
: : : *	
numv
Shape_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

: *
dtype0X
Shape_1Const*
_output_shapes
:*
dtype0*
valueB"       S
	unstack_1UnpackShape_1:output:0*
T0*
_output_shapes
: : *	
num^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   f
ReshapeReshapeinputs_0Reshape/shape:output:0*
T0*'
_output_shapes
:���������x
transpose/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

: *
dtype0_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       z
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*
_output_shapes

: `
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ����f
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0*
_output_shapes

: h
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*'
_output_shapes
:��������� T
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�S
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B : �
Reshape_2/shapePackunstack:output:0Reshape_2/shape/1:output:0Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:w
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*,
_output_shapes
:���������� R
Shape_2/CastCastinputs_2*

DstT0*

SrcT0	*
_output_shapes
:I
Shape_3ShapeReshape_2:output:0*
T0*
_output_shapes
:e
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
transpose_1	TransposeReshape_2:output:0transpose_1/perm:output:0*
T0*,
_output_shapes
:� ���������]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape_3:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
stack/1Const*
_output_shapes
: *
dtype0*
valueB :
���������e
stackPackstrided_slice:output:0stack/1:output:0*
N*
T0*
_output_shapes
:h
	Reshape_3Reshapetranspose_1:y:0stack:output:0*
T0*(
_output_shapes
:�����������
/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2Reshape_3:output:0*
T0*0
_output_shapes
:������������������_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_2/Cast:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape_3:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
	stack_1/2Const*
_output_shapes
: *
dtype0*
valueB :
����������
stack_1Packstrided_slice_1:output:0strided_slice_2:output:0stack_1/2:output:0*
N*
T0*
_output_shapes
:�
	Reshape_4Reshape9SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0stack_1:output:0*
T0*4
_output_shapes"
 :��������� ���������e
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_2	TransposeReshape_4:output:0transpose_2/perm:output:0*
T0*4
_output_shapes"
 :������������������ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddtranspose_2:y:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������ [
EluEluBiasAdd:output:0*
T0*4
_output_shapes"
 :������������������ �
5net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

: *
dtype0�
&net/gcn_conv/kernel/Regularizer/L2LossL2Loss=net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%net/gcn_conv/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#net/gcn_conv/kernel/Regularizer/mulMul.net/gcn_conv/kernel/Regularizer/mul/x:output:0/net/gcn_conv/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: m
IdentityIdentityElu:activations:0^NoOp*
T0*4
_output_shapes"
 :������������������ �
NoOpNoOp^BiasAdd/ReadVariableOp6^net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp^transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:����������:���������:���������:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp5net/gcn_conv/kernel/Regularizer/L2Loss/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:V R
,
_output_shapes
:����������
"
_user_specified_name
inputs_0:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
�
�
&__inference_dense_layer_call_fn_734798

inputs
unknown:	 �
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_734316p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
)__inference_gcn_conv_layer_call_fn_734645
inputs_0

inputs	
inputs_1
inputs_2	
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2unknown	unknown_0*
Tin

2		*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_gcn_conv_layer_call_and_return_conditional_losses_734225|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:����������:���������:���������:: : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:����������
"
_user_specified_name
inputs_0:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
�&
�
"__inference__traced_restore_734913
file_prefix6
$assignvariableop_net_gcn_conv_kernel: 2
$assignvariableop_1_net_gcn_conv_bias: :
(assignvariableop_2_net_gcn_conv_1_kernel:  4
&assignvariableop_3_net_gcn_conv_1_bias: 6
#assignvariableop_4_net_dense_kernel:	 �0
!assignvariableop_5_net_dense_bias:	�8
%assignvariableop_6_net_dense_1_kernel:	�1
#assignvariableop_7_net_dense_1_bias:

identity_9��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*�
value�B�	B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp$assignvariableop_net_gcn_conv_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp$assignvariableop_1_net_gcn_conv_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp(assignvariableop_2_net_gcn_conv_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp&assignvariableop_3_net_gcn_conv_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_net_dense_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_net_dense_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp%assignvariableop_6_net_dense_1_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp#assignvariableop_7_net_dense_1_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_9IdentityIdentity_8:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7*"
_acd_function_control_output(*
_output_shapes
 "!

identity_9Identity_9:output:0*%
_input_shapes
: : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_7:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
__inference__traced_save_734879
file_prefix2
.savev2_net_gcn_conv_kernel_read_readvariableop0
,savev2_net_gcn_conv_bias_read_readvariableop4
0savev2_net_gcn_conv_1_kernel_read_readvariableop2
.savev2_net_gcn_conv_1_bias_read_readvariableop/
+savev2_net_dense_kernel_read_readvariableop-
)savev2_net_dense_bias_read_readvariableop1
-savev2_net_dense_1_kernel_read_readvariableop/
+savev2_net_dense_1_bias_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*�
value�B�	B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0.savev2_net_gcn_conv_kernel_read_readvariableop,savev2_net_gcn_conv_bias_read_readvariableop0savev2_net_gcn_conv_1_kernel_read_readvariableop.savev2_net_gcn_conv_1_bias_read_readvariableop+savev2_net_dense_kernel_read_readvariableop)savev2_net_dense_bias_read_readvariableop-savev2_net_dense_1_kernel_read_readvariableop+savev2_net_dense_1_bias_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Z
_input_shapesI
G: : : :  : :	 �:�:	�:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :%!

_output_shapes
:	 �:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::	

_output_shapes
: 
�

�
C__inference_dense_1_layer_call_and_return_conditional_losses_734333

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
A__inference_dense_layer_call_and_return_conditional_losses_734316

inputs1
matmul_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
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
�
L
0__inference_global_sum_pool_layer_call_fn_734783

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
GPU2*0J 8� *T
fORM
K__inference_global_sum_pool_layer_call_and_return_conditional_losses_734303`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :������������������ :\ X
4
_output_shapes"
 :������������������ 
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
>
args_04
serving_default_args_0:0����������
=
args_0_11
serving_default_args_0_1:0	���������
9
args_0_2-
serving_default_args_0_2:0���������
0
args_0_3$
serving_default_args_0_3:0	<
output_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:�{
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	conv1
		conv2

flatten
fc1
fc2

signatures"
_tf_keras_model
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
trace_02�
$__inference_net_layer_call_fn_734477�
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
 ztrace_0
�
trace_02�
?__inference_net_layer_call_and_return_conditional_losses_734607�
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
 ztrace_0
�B�
!__inference__wrapped_model_734151args_0args_0_1args_0_2args_0_3"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%kwargs_keys

kernel
bias"
_tf_keras_layer
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses
,kwargs_keys

kernel
bias"
_tf_keras_layer
�
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
,
?serving_default"
signature_map
%:# 2net/gcn_conv/kernel
: 2net/gcn_conv/bias
':%  2net/gcn_conv_1/kernel
!: 2net/gcn_conv_1/bias
#:!	 �2net/dense/kernel
:�2net/dense/bias
%:#	�2net/dense_1/kernel
:2net/dense_1/bias
�
@trace_02�
__inference_loss_fn_0_734624�
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
annotations� *� z@trace_0
�
Atrace_02�
__inference_loss_fn_1_734633�
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
annotations� *� zAtrace_0
 "
trackable_list_wrapper
C
0
	1

2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
$__inference_net_layer_call_fn_734477inputs_0inputsinputs_1inputs_2"�
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
�B�
?__inference_net_layer_call_and_return_conditional_losses_734607inputs_0inputsinputs_1inputs_2"�
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
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
0"
trackable_list_wrapper
�
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
�
Gtrace_02�
)__inference_gcn_conv_layer_call_fn_734645�
���
FullArgSpec
args�

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zGtrace_0
�
Htrace_02�
D__inference_gcn_conv_layer_call_and_return_conditional_losses_734706�
���
FullArgSpec
args�

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zHtrace_0
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
0"
trackable_list_wrapper
�
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
�
Ntrace_02�
+__inference_gcn_conv_1_layer_call_fn_734718�
���
FullArgSpec
args�

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zNtrace_0
�
Otrace_02�
F__inference_gcn_conv_1_layer_call_and_return_conditional_losses_734778�
���
FullArgSpec
args�

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zOtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
�
Utrace_02�
0__inference_global_sum_pool_layer_call_fn_734783�
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
 zUtrace_0
�
Vtrace_02�
K__inference_global_sum_pool_layer_call_and_return_conditional_losses_734789�
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
 zVtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
�
\trace_02�
&__inference_dense_layer_call_fn_734798�
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
 z\trace_0
�
]trace_02�
A__inference_dense_layer_call_and_return_conditional_losses_734809�
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
 z]trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
�
ctrace_02�
(__inference_dense_1_layer_call_fn_734818�
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
 zctrace_0
�
dtrace_02�
C__inference_dense_1_layer_call_and_return_conditional_losses_734829�
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
 zdtrace_0
�B�
$__inference_signature_wrapper_734453args_0args_0_1args_0_2args_0_3"�
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
 
�B�
__inference_loss_fn_0_734624"�
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
__inference_loss_fn_1_734633"�
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_gcn_conv_layer_call_fn_734645inputs_0inputsinputs_1inputs_2"�
���
FullArgSpec
args�

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_gcn_conv_layer_call_and_return_conditional_losses_734706inputs_0inputsinputs_1inputs_2"�
���
FullArgSpec
args�

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_gcn_conv_1_layer_call_fn_734718inputs_0inputsinputs_1inputs_2"�
���
FullArgSpec
args�

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_gcn_conv_1_layer_call_and_return_conditional_losses_734778inputs_0inputsinputs_1inputs_2"�
���
FullArgSpec
args�

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
0__inference_global_sum_pool_layer_call_fn_734783inputs"�
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
�B�
K__inference_global_sum_pool_layer_call_and_return_conditional_losses_734789inputs"�
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
�B�
&__inference_dense_layer_call_fn_734798inputs"�
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
�B�
A__inference_dense_layer_call_and_return_conditional_losses_734809inputs"�
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
�B�
(__inference_dense_1_layer_call_fn_734818inputs"�
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
�B�
C__inference_dense_1_layer_call_and_return_conditional_losses_734829inputs"�
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
 �
!__inference__wrapped_model_734151��|
u�r
p�m
'�$
args_0_0����������
B�?'�$
�������������������
�SparseTensorSpec 
� "3�0
.
output_1"�
output_1����������
C__inference_dense_1_layer_call_and_return_conditional_losses_734829d0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������
� �
(__inference_dense_1_layer_call_fn_734818Y0�-
&�#
!�
inputs����������
� "!�
unknown����������
A__inference_dense_layer_call_and_return_conditional_losses_734809d/�,
%�"
 �
inputs��������� 
� "-�*
#� 
tensor_0����������
� �
&__inference_dense_layer_call_fn_734798Y/�,
%�"
 �
inputs��������� 
� ""�
unknown�����������
F__inference_gcn_conv_1_layer_call_and_return_conditional_losses_734778����
}�z
x�u
/�,
inputs_0������������������ 
B�?'�$
�������������������
�SparseTensorSpec 
� "9�6
/�,
tensor_0������������������ 
� �
+__inference_gcn_conv_1_layer_call_fn_734718����
}�z
x�u
/�,
inputs_0������������������ 
B�?'�$
�������������������
�SparseTensorSpec 
� ".�+
unknown������������������ �
D__inference_gcn_conv_layer_call_and_return_conditional_losses_734706��|
u�r
p�m
'�$
inputs_0����������
B�?'�$
�������������������
�SparseTensorSpec 
� "9�6
/�,
tensor_0������������������ 
� �
)__inference_gcn_conv_layer_call_fn_734645��|
u�r
p�m
'�$
inputs_0����������
B�?'�$
�������������������
�SparseTensorSpec 
� ".�+
unknown������������������ �
K__inference_global_sum_pool_layer_call_and_return_conditional_losses_734789l<�9
2�/
-�*
inputs������������������ 
� ",�)
"�
tensor_0��������� 
� �
0__inference_global_sum_pool_layer_call_fn_734783a<�9
2�/
-�*
inputs������������������ 
� "!�
unknown��������� D
__inference_loss_fn_0_734624$�

� 
� "�
unknown D
__inference_loss_fn_1_734633$�

� 
� "�
unknown �
?__inference_net_layer_call_and_return_conditional_losses_734607��|
u�r
p�m
'�$
inputs_0����������
B�?'�$
�������������������
�SparseTensorSpec 
� ",�)
"�
tensor_0���������
� �
$__inference_net_layer_call_fn_734477��|
u�r
p�m
'�$
inputs_0����������
B�?'�$
�������������������
�SparseTensorSpec 
� "!�
unknown����������
$__inference_signature_wrapper_734453����
� 
���
/
args_0%�"
args_0����������
.
args_0_1"�
args_0_1���������	
*
args_0_2�
args_0_2���������
!
args_0_3�
args_0_3	"3�0
.
output_1"�
output_1���������