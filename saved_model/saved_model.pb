┤Ы
» 
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
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
Џ
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
ѓ
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
є
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ѕ
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
dtypetypeѕ
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
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
┴
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
executor_typestring ѕе
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
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8ьћ
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
r
dense_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_35/bias
k
!dense_35/bias/Read/ReadVariableOpReadVariableOpdense_35/bias*
_output_shapes
:*
dtype0
z
dense_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_35/kernel
s
#dense_35/kernel/Read/ReadVariableOpReadVariableOpdense_35/kernel*
_output_shapes

:@*
dtype0
r
dense_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_34/bias
k
!dense_34/bias/Read/ReadVariableOpReadVariableOpdense_34/bias*
_output_shapes
:@*
dtype0
{
dense_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђH@* 
shared_namedense_34/kernel
t
#dense_34/kernel/Read/ReadVariableOpReadVariableOpdense_34/kernel*
_output_shapes
:	ђH@*
dtype0
t
conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_18/bias
m
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes
:@*
dtype0
ё
conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_18/kernel
}
$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*&
_output_shapes
:@*
dtype0
њ
serving_default_conv2d_18_inputPlaceholder*/
_output_shapes
:         22*
dtype0*$
shape:         22
Д
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_18_inputconv2d_18/kernelconv2d_18/biasdense_34/kerneldense_34/biasdense_35/kerneldense_35/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *,
f'R%
#__inference_signature_wrapper_67175

NoOpNoOp
«6
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ж5
value▀5B▄5 BН5
ѓ
layer_with_weights-0
layer-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
╚
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
ј
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses* 
ј
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses* 
ј
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses* 
д
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses

3kernel
4bias*
Ц
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses
;_random_generator* 
ј
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses* 
д
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

Hkernel
Ibias*
.
0
1
32
43
H4
I5*
.
0
1
32
43
H4
I5*
* 
░
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Otrace_0
Ptrace_1
Qtrace_2
Rtrace_3* 
6
Strace_0
Ttrace_1
Utrace_2
Vtrace_3* 
* 
:
Witer
	Xdecay
Ylearning_rate
Zmomentum*

[serving_default* 

0
1*

0
1*
* 
Њ
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

atrace_0* 

btrace_0* 
`Z
VARIABLE_VALUEconv2d_18/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_18/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Љ
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses* 

htrace_0* 

itrace_0* 
* 
* 
* 
Љ
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses* 

otrace_0* 

ptrace_0* 
* 
* 
* 
Љ
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses* 

vtrace_0* 

wtrace_0* 

30
41*

30
41*
* 
Њ
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses*

}trace_0* 

~trace_0* 
_Y
VARIABLE_VALUEdense_34/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_34/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ћ
non_trainable_variables
ђlayers
Ђmetrics
 ѓlayer_regularization_losses
Ѓlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses* 

ёtrace_0
Ёtrace_1* 

єtrace_0
Єtrace_1* 
* 
* 
* 
* 
ќ
ѕnon_trainable_variables
Ѕlayers
іmetrics
 Іlayer_regularization_losses
їlayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses* 

Їtrace_0* 

јtrace_0* 

H0
I1*

H0
I1*
* 
ў
Јnon_trainable_variables
љlayers
Љmetrics
 њlayer_regularization_losses
Њlayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses*

ћtrace_0* 

Ћtrace_0* 
_Y
VARIABLE_VALUEdense_35/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_35/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
0
1
2
3
4
5
6
7*

ќ0
Ќ1*
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
KE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
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
<
ў	variables
Ў	keras_api

џtotal

Џcount*
M
ю	variables
Ю	keras_api

ъtotal

Ъcount
а
_fn_kwargs*

џ0
Џ1*

ў	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

ъ0
Ъ1*

ю	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Э
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_18/kernel/Read/ReadVariableOp"conv2d_18/bias/Read/ReadVariableOp#dense_34/kernel/Read/ReadVariableOp!dense_34/bias/Read/ReadVariableOp#dense_35/kernel/Read/ReadVariableOp!dense_35/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *'
f"R 
__inference__traced_save_67465
█
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_18/kernelconv2d_18/biasdense_34/kerneldense_34/biasdense_35/kerneldense_35/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotal_1count_1totalcount*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference__traced_restore_67517жи
Ц
I
-__inference_activation_39_layer_call_fn_67375

inputs
identity│
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_activation_39_layer_call_and_return_conditional_losses_66923`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ю 
ю
H__inference_sequential_18_layer_call_and_return_conditional_losses_66943

inputs)
conv2d_18_66874:@
conv2d_18_66876:@!
dense_34_66906:	ђH@
dense_34_66908:@ 
dense_35_66937:@
dense_35_66939:
identityѕб!conv2d_18/StatefulPartitionedCallб dense_34/StatefulPartitionedCallб dense_35/StatefulPartitionedCallщ
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_18_66874conv2d_18_66876*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_66873ь
activation_38/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_activation_38_layer_call_and_return_conditional_losses_66884№
 max_pooling2d_18/PartitionedCallPartitionedCall&activation_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_66853▀
flatten_18/PartitionedCallPartitionedCall)max_pooling2d_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђH* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_flatten_18_layer_call_and_return_conditional_losses_66893і
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#flatten_18/PartitionedCall:output:0dense_34_66906dense_34_66908*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_66905я
dropout_19/PartitionedCallPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_66916я
activation_39/PartitionedCallPartitionedCall#dropout_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_activation_39_layer_call_and_return_conditional_losses_66923Ї
 dense_35/StatefulPartitionedCallStatefulPartitionedCall&activation_39/PartitionedCall:output:0dense_35_66937dense_35_66939*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_35_layer_call_and_return_conditional_losses_66936x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ░
NoOpNoOp"^conv2d_18/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         22: : : : : : 2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall:W S
/
_output_shapes
:         22
 
_user_specified_nameinputs
д	
ў
-__inference_sequential_18_layer_call_fn_66958
conv2d_18_input!
unknown:@
	unknown_0:@
	unknown_1:	ђH@
	unknown_2:@
	unknown_3:@
	unknown_4:
identityѕбStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_sequential_18_layer_call_and_return_conditional_losses_66943o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         22: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:         22
)
_user_specified_nameconv2d_18_input
Њ
g
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_67313

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Њ
g
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_66853

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┼
I
-__inference_activation_38_layer_call_fn_67298

inputs
identity╗
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_activation_38_layer_call_and_return_conditional_losses_66884h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         00@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         00@:W S
/
_output_shapes
:         00@
 
_user_specified_nameinputs
═)
Ъ
 __inference__wrapped_model_66844
conv2d_18_inputP
6sequential_18_conv2d_18_conv2d_readvariableop_resource:@E
7sequential_18_conv2d_18_biasadd_readvariableop_resource:@H
5sequential_18_dense_34_matmul_readvariableop_resource:	ђH@D
6sequential_18_dense_34_biasadd_readvariableop_resource:@G
5sequential_18_dense_35_matmul_readvariableop_resource:@D
6sequential_18_dense_35_biasadd_readvariableop_resource:
identityѕб.sequential_18/conv2d_18/BiasAdd/ReadVariableOpб-sequential_18/conv2d_18/Conv2D/ReadVariableOpб-sequential_18/dense_34/BiasAdd/ReadVariableOpб,sequential_18/dense_34/MatMul/ReadVariableOpб-sequential_18/dense_35/BiasAdd/ReadVariableOpб,sequential_18/dense_35/MatMul/ReadVariableOpг
-sequential_18/conv2d_18/Conv2D/ReadVariableOpReadVariableOp6sequential_18_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0М
sequential_18/conv2d_18/Conv2DConv2Dconv2d_18_input5sequential_18/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@*
paddingVALID*
strides
б
.sequential_18/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp7sequential_18_conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┼
sequential_18/conv2d_18/BiasAddBiasAdd'sequential_18/conv2d_18/Conv2D:output:06sequential_18/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@ї
 sequential_18/activation_38/ReluRelu(sequential_18/conv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:         00@╬
&sequential_18/max_pooling2d_18/MaxPoolMaxPool.sequential_18/activation_38/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
o
sequential_18/flatten_18/ConstConst*
_output_shapes
:*
dtype0*
valueB"     $  И
 sequential_18/flatten_18/ReshapeReshape/sequential_18/max_pooling2d_18/MaxPool:output:0'sequential_18/flatten_18/Const:output:0*
T0*(
_output_shapes
:         ђHБ
,sequential_18/dense_34/MatMul/ReadVariableOpReadVariableOp5sequential_18_dense_34_matmul_readvariableop_resource*
_output_shapes
:	ђH@*
dtype0║
sequential_18/dense_34/MatMulMatMul)sequential_18/flatten_18/Reshape:output:04sequential_18/dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @а
-sequential_18/dense_34/BiasAdd/ReadVariableOpReadVariableOp6sequential_18_dense_34_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╗
sequential_18/dense_34/BiasAddBiasAdd'sequential_18/dense_34/MatMul:product:05sequential_18/dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ѕ
!sequential_18/dropout_19/IdentityIdentity'sequential_18/dense_34/BiasAdd:output:0*
T0*'
_output_shapes
:         @є
 sequential_18/activation_39/ReluRelu*sequential_18/dropout_19/Identity:output:0*
T0*'
_output_shapes
:         @б
,sequential_18/dense_35/MatMul/ReadVariableOpReadVariableOp5sequential_18_dense_35_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0┐
sequential_18/dense_35/MatMulMatMul.sequential_18/activation_39/Relu:activations:04sequential_18/dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_18/dense_35/BiasAdd/ReadVariableOpReadVariableOp6sequential_18_dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_18/dense_35/BiasAddBiasAdd'sequential_18/dense_35/MatMul:product:05sequential_18/dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
sequential_18/dense_35/SoftmaxSoftmax'sequential_18/dense_35/BiasAdd:output:0*
T0*'
_output_shapes
:         w
IdentityIdentity(sequential_18/dense_35/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         т
NoOpNoOp/^sequential_18/conv2d_18/BiasAdd/ReadVariableOp.^sequential_18/conv2d_18/Conv2D/ReadVariableOp.^sequential_18/dense_34/BiasAdd/ReadVariableOp-^sequential_18/dense_34/MatMul/ReadVariableOp.^sequential_18/dense_35/BiasAdd/ReadVariableOp-^sequential_18/dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         22: : : : : : 2`
.sequential_18/conv2d_18/BiasAdd/ReadVariableOp.sequential_18/conv2d_18/BiasAdd/ReadVariableOp2^
-sequential_18/conv2d_18/Conv2D/ReadVariableOp-sequential_18/conv2d_18/Conv2D/ReadVariableOp2^
-sequential_18/dense_34/BiasAdd/ReadVariableOp-sequential_18/dense_34/BiasAdd/ReadVariableOp2\
,sequential_18/dense_34/MatMul/ReadVariableOp,sequential_18/dense_34/MatMul/ReadVariableOp2^
-sequential_18/dense_35/BiasAdd/ReadVariableOp-sequential_18/dense_35/BiasAdd/ReadVariableOp2\
,sequential_18/dense_35/MatMul/ReadVariableOp,sequential_18/dense_35/MatMul/ReadVariableOp:` \
/
_output_shapes
:         22
)
_user_specified_nameconv2d_18_input
І	
Ј
-__inference_sequential_18_layer_call_fn_67209

inputs!
unknown:@
	unknown_0:@
	unknown_1:	ђH@
	unknown_2:@
	unknown_3:@
	unknown_4:
identityѕбStatefulPartitionedCallЉ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_sequential_18_layer_call_and_return_conditional_losses_67072o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         22: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         22
 
_user_specified_nameinputs
в8
ь
!__inference__traced_restore_67517
file_prefix;
!assignvariableop_conv2d_18_kernel:@/
!assignvariableop_1_conv2d_18_bias:@5
"assignvariableop_2_dense_34_kernel:	ђH@.
 assignvariableop_3_dense_34_bias:@4
"assignvariableop_4_dense_35_kernel:@.
 assignvariableop_5_dense_35_bias:%
assignvariableop_6_sgd_iter:	 &
assignvariableop_7_sgd_decay: .
$assignvariableop_8_sgd_learning_rate: )
assignvariableop_9_sgd_momentum: %
assignvariableop_10_total_1: %
assignvariableop_11_count_1: #
assignvariableop_12_total: #
assignvariableop_13_count: 
identity_15ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_2бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9ж
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ј
valueЁBѓB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHј
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B ж
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_18_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_18_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_34_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_34_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_35_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_35_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:і
AssignVariableOp_6AssignVariableOpassignvariableop_6_sgd_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_7AssignVariableOpassignvariableop_7_sgd_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_8AssignVariableOp$assignvariableop_8_sgd_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_9AssignVariableOpassignvariableop_9_sgd_momentumIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_10AssignVariableOpassignvariableop_10_total_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_11AssignVariableOpassignvariableop_11_count_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ѓ
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_15IdentityIdentity_14:output:0^NoOp_1*
T0*
_output_shapes
: ­
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_15Identity_15:output:0*1
_input_shapes 
: : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132(
AssignVariableOp_2AssignVariableOp_22(
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
Ж
ъ
)__inference_conv2d_18_layer_call_fn_67283

inputs!
unknown:@
	unknown_0:@
identityѕбStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_66873w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         00@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         22: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         22
 
_user_specified_nameinputs
п
c
E__inference_dropout_19_layer_call_and_return_conditional_losses_67358

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         @[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ъ

З
C__inference_dense_35_layer_call_and_return_conditional_losses_67400

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╬$
Н
__inference__traced_save_67465
file_prefix/
+savev2_conv2d_18_kernel_read_readvariableop-
)savev2_conv2d_18_bias_read_readvariableop.
*savev2_dense_34_kernel_read_readvariableop,
(savev2_dense_34_bias_read_readvariableop.
*savev2_dense_35_kernel_read_readvariableop,
(savev2_dense_35_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ѕбMergeV2Checkpointsw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Т
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ј
valueЁBѓB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHІ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B ­
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_18_kernel_read_readvariableop)savev2_conv2d_18_bias_read_readvariableop*savev2_dense_34_kernel_read_readvariableop(savev2_dense_34_bias_read_readvariableop*savev2_dense_35_kernel_read_readvariableop(savev2_dense_35_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:І
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
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

identity_1Identity_1:output:0*`
_input_shapesO
M: :@:@:	ђH@:@:@:: : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:%!

_output_shapes
:	ђH@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ъ

З
C__inference_dense_35_layer_call_and_return_conditional_losses_66936

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
▒
F
*__inference_flatten_18_layer_call_fn_67318

inputs
identity▒
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђH* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_flatten_18_layer_call_and_return_conditional_losses_66893a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ђH"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
К
a
E__inference_flatten_18_layer_call_and_return_conditional_losses_66893

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     $  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ђHY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ђH"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
е

§
D__inference_conv2d_18_layer_call_and_return_conditional_losses_66873

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         00@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         22: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         22
 
_user_specified_nameinputs
п
c
E__inference_dropout_19_layer_call_and_return_conditional_losses_66916

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         @[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
К
a
E__inference_flatten_18_layer_call_and_return_conditional_losses_67324

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     $  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ђHY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ђH"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
В
d
H__inference_activation_38_layer_call_and_return_conditional_losses_66884

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:         00@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         00@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         00@:W S
/
_output_shapes
:         00@
 
_user_specified_nameinputs
╔!
┴
H__inference_sequential_18_layer_call_and_return_conditional_losses_67072

inputs)
conv2d_18_67051:@
conv2d_18_67053:@!
dense_34_67059:	ђH@
dense_34_67061:@ 
dense_35_67066:@
dense_35_67068:
identityѕб!conv2d_18/StatefulPartitionedCallб dense_34/StatefulPartitionedCallб dense_35/StatefulPartitionedCallб"dropout_19/StatefulPartitionedCallщ
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_18_67051conv2d_18_67053*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_66873ь
activation_38/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_activation_38_layer_call_and_return_conditional_losses_66884№
 max_pooling2d_18/PartitionedCallPartitionedCall&activation_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_66853▀
flatten_18/PartitionedCallPartitionedCall)max_pooling2d_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђH* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_flatten_18_layer_call_and_return_conditional_losses_66893і
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#flatten_18/PartitionedCall:output:0dense_34_67059dense_34_67061*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_66905Ь
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_66994Т
activation_39/PartitionedCallPartitionedCall+dropout_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_activation_39_layer_call_and_return_conditional_losses_66923Ї
 dense_35/StatefulPartitionedCallStatefulPartitionedCall&activation_39/PartitionedCall:output:0dense_35_67066dense_35_67068*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_35_layer_call_and_return_conditional_losses_66936x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Н
NoOpNoOp"^conv2d_18/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         22: : : : : : 2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall:W S
/
_output_shapes
:         22
 
_user_specified_nameinputs
џ)
ќ
H__inference_sequential_18_layer_call_and_return_conditional_losses_67274

inputsB
(conv2d_18_conv2d_readvariableop_resource:@7
)conv2d_18_biasadd_readvariableop_resource:@:
'dense_34_matmul_readvariableop_resource:	ђH@6
(dense_34_biasadd_readvariableop_resource:@9
'dense_35_matmul_readvariableop_resource:@6
(dense_35_biasadd_readvariableop_resource:
identityѕб conv2d_18/BiasAdd/ReadVariableOpбconv2d_18/Conv2D/ReadVariableOpбdense_34/BiasAdd/ReadVariableOpбdense_34/MatMul/ReadVariableOpбdense_35/BiasAdd/ReadVariableOpбdense_35/MatMul/ReadVariableOpљ
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0«
conv2d_18/Conv2DConv2Dinputs'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@*
paddingVALID*
strides
є
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Џ
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@p
activation_38/ReluReluconv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:         00@▓
max_pooling2d_18/MaxPoolMaxPool activation_38/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
a
flatten_18/ConstConst*
_output_shapes
:*
dtype0*
valueB"     $  ј
flatten_18/ReshapeReshape!max_pooling2d_18/MaxPool:output:0flatten_18/Const:output:0*
T0*(
_output_shapes
:         ђHЄ
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes
:	ђH@*
dtype0љ
dense_34/MatMulMatMulflatten_18/Reshape:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ё
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Љ
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @]
dropout_19/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?Ї
dropout_19/dropout/MulMuldense_34/BiasAdd:output:0!dropout_19/dropout/Const:output:0*
T0*'
_output_shapes
:         @a
dropout_19/dropout/ShapeShapedense_34/BiasAdd:output:0*
T0*
_output_shapes
:б
/dropout_19/dropout/random_uniform/RandomUniformRandomUniform!dropout_19/dropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0f
!dropout_19/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>К
dropout_19/dropout/GreaterEqualGreaterEqual8dropout_19/dropout/random_uniform/RandomUniform:output:0*dropout_19/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @Ё
dropout_19/dropout/CastCast#dropout_19/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         @і
dropout_19/dropout/Mul_1Muldropout_19/dropout/Mul:z:0dropout_19/dropout/Cast:y:0*
T0*'
_output_shapes
:         @j
activation_39/ReluReludropout_19/dropout/Mul_1:z:0*
T0*'
_output_shapes
:         @є
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Ћ
dense_35/MatMulMatMul activation_39/Relu:activations:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_35/SoftmaxSoftmaxdense_35/BiasAdd:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_35/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         Љ
NoOpNoOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         22: : : : : : 2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp:W S
/
_output_shapes
:         22
 
_user_specified_nameinputs
І	
Ј
-__inference_sequential_18_layer_call_fn_67192

inputs!
unknown:@
	unknown_0:@
	unknown_1:	ђH@
	unknown_2:@
	unknown_3:@
	unknown_4:
identityѕбStatefulPartitionedCallЉ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_sequential_18_layer_call_and_return_conditional_losses_66943o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         22: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         22
 
_user_specified_nameinputs
╠
d
H__inference_activation_39_layer_call_and_return_conditional_losses_67380

inputs
identityF
ReluReluinputs*
T0*'
_output_shapes
:         @Z
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╩	
ш
C__inference_dense_34_layer_call_and_return_conditional_losses_67343

inputs1
matmul_readvariableop_resource:	ђH@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђH@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђH: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђH
 
_user_specified_nameinputs
з	
d
E__inference_dropout_19_layer_call_and_return_conditional_losses_66994

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         @C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         @i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         @Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╩	
ш
C__inference_dense_34_layer_call_and_return_conditional_losses_66905

inputs1
matmul_readvariableop_resource:	ђH@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђH@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђH: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђH
 
_user_specified_nameinputs
╠
d
H__inference_activation_39_layer_call_and_return_conditional_losses_66923

inputs
identityF
ReluReluinputs*
T0*'
_output_shapes
:         @Z
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
ы
c
*__inference_dropout_19_layer_call_fn_67353

inputs
identityѕбStatefulPartitionedCall└
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_66994o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
д	
ў
-__inference_sequential_18_layer_call_fn_67104
conv2d_18_input!
unknown:@
	unknown_0:@
	unknown_1:	ђH@
	unknown_2:@
	unknown_3:@
	unknown_4:
identityѕбStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_sequential_18_layer_call_and_return_conditional_losses_67072o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         22: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:         22
)
_user_specified_nameconv2d_18_input
И
L
0__inference_max_pooling2d_18_layer_call_fn_67308

inputs
identity┘
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_66853Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ъ
F
*__inference_dropout_19_layer_call_fn_67348

inputs
identity░
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_66916`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
И 
Ц
H__inference_sequential_18_layer_call_and_return_conditional_losses_67128
conv2d_18_input)
conv2d_18_67107:@
conv2d_18_67109:@!
dense_34_67115:	ђH@
dense_34_67117:@ 
dense_35_67122:@
dense_35_67124:
identityѕб!conv2d_18/StatefulPartitionedCallб dense_34/StatefulPartitionedCallб dense_35/StatefulPartitionedCallѓ
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputconv2d_18_67107conv2d_18_67109*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_66873ь
activation_38/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_activation_38_layer_call_and_return_conditional_losses_66884№
 max_pooling2d_18/PartitionedCallPartitionedCall&activation_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_66853▀
flatten_18/PartitionedCallPartitionedCall)max_pooling2d_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђH* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_flatten_18_layer_call_and_return_conditional_losses_66893і
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#flatten_18/PartitionedCall:output:0dense_34_67115dense_34_67117*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_66905я
dropout_19/PartitionedCallPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_66916я
activation_39/PartitionedCallPartitionedCall#dropout_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_activation_39_layer_call_and_return_conditional_losses_66923Ї
 dense_35/StatefulPartitionedCallStatefulPartitionedCall&activation_39/PartitionedCall:output:0dense_35_67122dense_35_67124*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_35_layer_call_and_return_conditional_losses_66936x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ░
NoOpNoOp"^conv2d_18/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         22: : : : : : 2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall:` \
/
_output_shapes
:         22
)
_user_specified_nameconv2d_18_input
└
Ћ
(__inference_dense_35_layer_call_fn_67389

inputs
unknown:@
	unknown_0:
identityѕбStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_35_layer_call_and_return_conditional_losses_66936o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
з	
d
E__inference_dropout_19_layer_call_and_return_conditional_losses_67370

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         @C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         @i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         @Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
З
ј
#__inference_signature_wrapper_67175
conv2d_18_input!
unknown:@
	unknown_0:@
	unknown_1:	ђH@
	unknown_2:@
	unknown_3:@
	unknown_4:
identityѕбStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *)
f$R"
 __inference__wrapped_model_66844o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         22: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:         22
)
_user_specified_nameconv2d_18_input
├
ќ
(__inference_dense_34_layer_call_fn_67333

inputs
unknown:	ђH@
	unknown_0:@
identityѕбStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_66905o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђH: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђH
 
_user_specified_nameinputs
е

§
D__inference_conv2d_18_layer_call_and_return_conditional_losses_67293

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         00@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         22: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         22
 
_user_specified_nameinputs
В
d
H__inference_activation_38_layer_call_and_return_conditional_losses_67303

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:         00@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         00@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         00@:W S
/
_output_shapes
:         00@
 
_user_specified_nameinputs
С!
╩
H__inference_sequential_18_layer_call_and_return_conditional_losses_67152
conv2d_18_input)
conv2d_18_67131:@
conv2d_18_67133:@!
dense_34_67139:	ђH@
dense_34_67141:@ 
dense_35_67146:@
dense_35_67148:
identityѕб!conv2d_18/StatefulPartitionedCallб dense_34/StatefulPartitionedCallб dense_35/StatefulPartitionedCallб"dropout_19/StatefulPartitionedCallѓ
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputconv2d_18_67131conv2d_18_67133*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_66873ь
activation_38/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_activation_38_layer_call_and_return_conditional_losses_66884№
 max_pooling2d_18/PartitionedCallPartitionedCall&activation_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_66853▀
flatten_18/PartitionedCallPartitionedCall)max_pooling2d_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђH* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_flatten_18_layer_call_and_return_conditional_losses_66893і
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#flatten_18/PartitionedCall:output:0dense_34_67139dense_34_67141*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_66905Ь
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_66994Т
activation_39/PartitionedCallPartitionedCall+dropout_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_activation_39_layer_call_and_return_conditional_losses_66923Ї
 dense_35/StatefulPartitionedCallStatefulPartitionedCall&activation_39/PartitionedCall:output:0dense_35_67146dense_35_67148*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_35_layer_call_and_return_conditional_losses_66936x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Н
NoOpNoOp"^conv2d_18/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         22: : : : : : 2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall:` \
/
_output_shapes
:         22
)
_user_specified_nameconv2d_18_input
╩!
ќ
H__inference_sequential_18_layer_call_and_return_conditional_losses_67238

inputsB
(conv2d_18_conv2d_readvariableop_resource:@7
)conv2d_18_biasadd_readvariableop_resource:@:
'dense_34_matmul_readvariableop_resource:	ђH@6
(dense_34_biasadd_readvariableop_resource:@9
'dense_35_matmul_readvariableop_resource:@6
(dense_35_biasadd_readvariableop_resource:
identityѕб conv2d_18/BiasAdd/ReadVariableOpбconv2d_18/Conv2D/ReadVariableOpбdense_34/BiasAdd/ReadVariableOpбdense_34/MatMul/ReadVariableOpбdense_35/BiasAdd/ReadVariableOpбdense_35/MatMul/ReadVariableOpљ
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0«
conv2d_18/Conv2DConv2Dinputs'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@*
paddingVALID*
strides
є
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Џ
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@p
activation_38/ReluReluconv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:         00@▓
max_pooling2d_18/MaxPoolMaxPool activation_38/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
a
flatten_18/ConstConst*
_output_shapes
:*
dtype0*
valueB"     $  ј
flatten_18/ReshapeReshape!max_pooling2d_18/MaxPool:output:0flatten_18/Const:output:0*
T0*(
_output_shapes
:         ђHЄ
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes
:	ђH@*
dtype0љ
dense_34/MatMulMatMulflatten_18/Reshape:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ё
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Љ
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @l
dropout_19/IdentityIdentitydense_34/BiasAdd:output:0*
T0*'
_output_shapes
:         @j
activation_39/ReluReludropout_19/Identity:output:0*
T0*'
_output_shapes
:         @є
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Ћ
dense_35/MatMulMatMul activation_39/Relu:activations:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_35/SoftmaxSoftmaxdense_35/BiasAdd:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_35/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         Љ
NoOpNoOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         22: : : : : : 2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp:W S
/
_output_shapes
:         22
 
_user_specified_nameinputs"х	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*├
serving_default»
S
conv2d_18_input@
!serving_default_conv2d_18_input:0         22<
dense_350
StatefulPartitionedCall:0         tensorflow/serving/predict:ўК
ю
layer_with_weights-0
layer-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
П
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
Ц
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses

3kernel
4bias"
_tf_keras_layer
╝
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses
;_random_generator"
_tf_keras_layer
Ц
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

Hkernel
Ibias"
_tf_keras_layer
J
0
1
32
43
H4
I5"
trackable_list_wrapper
J
0
1
32
43
H4
I5"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ж
Otrace_0
Ptrace_1
Qtrace_2
Rtrace_32■
-__inference_sequential_18_layer_call_fn_66958
-__inference_sequential_18_layer_call_fn_67192
-__inference_sequential_18_layer_call_fn_67209
-__inference_sequential_18_layer_call_fn_67104┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zOtrace_0zPtrace_1zQtrace_2zRtrace_3
Н
Strace_0
Ttrace_1
Utrace_2
Vtrace_32Ж
H__inference_sequential_18_layer_call_and_return_conditional_losses_67238
H__inference_sequential_18_layer_call_and_return_conditional_losses_67274
H__inference_sequential_18_layer_call_and_return_conditional_losses_67128
H__inference_sequential_18_layer_call_and_return_conditional_losses_67152┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zStrace_0zTtrace_1zUtrace_2zVtrace_3
МBл
 __inference__wrapped_model_66844conv2d_18_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
I
Witer
	Xdecay
Ylearning_rate
Zmomentum"
	optimizer
,
[serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ь
atrace_02л
)__inference_conv2d_18_layer_call_fn_67283б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zatrace_0
ѕ
btrace_02в
D__inference_conv2d_18_layer_call_and_return_conditional_losses_67293б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zbtrace_0
*:(@2conv2d_18/kernel
:@2conv2d_18/bias
┤2▒«
Б▓Ъ
FullArgSpec'
argsџ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
ы
htrace_02н
-__inference_activation_38_layer_call_fn_67298б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zhtrace_0
ї
itrace_02№
H__inference_activation_38_layer_call_and_return_conditional_losses_67303б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zitrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
З
otrace_02О
0__inference_max_pooling2d_18_layer_call_fn_67308б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zotrace_0
Ј
ptrace_02Ы
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_67313б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zptrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
Ь
vtrace_02Л
*__inference_flatten_18_layer_call_fn_67318б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zvtrace_0
Ѕ
wtrace_02В
E__inference_flatten_18_layer_call_and_return_conditional_losses_67324б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zwtrace_0
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
В
}trace_02¤
(__inference_dense_34_layer_call_fn_67333б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z}trace_0
Є
~trace_02Ж
C__inference_dense_34_layer_call_and_return_conditional_losses_67343б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z~trace_0
": 	ђH@2dense_34/kernel
:@2dense_34/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▒
non_trainable_variables
ђlayers
Ђmetrics
 ѓlayer_regularization_losses
Ѓlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
╔
ёtrace_0
Ёtrace_12ј
*__inference_dropout_19_layer_call_fn_67348
*__inference_dropout_19_layer_call_fn_67353│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zёtrace_0zЁtrace_1
 
єtrace_0
Єtrace_12─
E__inference_dropout_19_layer_call_and_return_conditional_losses_67358
E__inference_dropout_19_layer_call_and_return_conditional_losses_67370│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zєtrace_0zЄtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ѕnon_trainable_variables
Ѕlayers
іmetrics
 Іlayer_regularization_losses
їlayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
з
Їtrace_02н
-__inference_activation_39_layer_call_fn_67375б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЇtrace_0
ј
јtrace_02№
H__inference_activation_39_layer_call_and_return_conditional_losses_67380б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zјtrace_0
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Јnon_trainable_variables
љlayers
Љmetrics
 њlayer_regularization_losses
Њlayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
Ь
ћtrace_02¤
(__inference_dense_35_layer_call_fn_67389б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zћtrace_0
Ѕ
Ћtrace_02Ж
C__inference_dense_35_layer_call_and_return_conditional_losses_67400б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЋtrace_0
!:@2dense_35/kernel
:2dense_35/bias
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
0
ќ0
Ќ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЄBё
-__inference_sequential_18_layer_call_fn_66958conv2d_18_input"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
■Bч
-__inference_sequential_18_layer_call_fn_67192inputs"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
■Bч
-__inference_sequential_18_layer_call_fn_67209inputs"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЄBё
-__inference_sequential_18_layer_call_fn_67104conv2d_18_input"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЎBќ
H__inference_sequential_18_layer_call_and_return_conditional_losses_67238inputs"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЎBќ
H__inference_sequential_18_layer_call_and_return_conditional_losses_67274inputs"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
бBЪ
H__inference_sequential_18_layer_call_and_return_conditional_losses_67128conv2d_18_input"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
бBЪ
H__inference_sequential_18_layer_call_and_return_conditional_losses_67152conv2d_18_input"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
мB¤
#__inference_signature_wrapper_67175conv2d_18_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
ПB┌
)__inference_conv2d_18_layer_call_fn_67283inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЭBш
D__inference_conv2d_18_layer_call_and_return_conditional_losses_67293inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
рBя
-__inference_activation_38_layer_call_fn_67298inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЧBщ
H__inference_activation_38_layer_call_and_return_conditional_losses_67303inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
СBр
0__inference_max_pooling2d_18_layer_call_fn_67308inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 BЧ
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_67313inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
яB█
*__inference_flatten_18_layer_call_fn_67318inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
щBШ
E__inference_flatten_18_layer_call_and_return_conditional_losses_67324inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
▄B┘
(__inference_dense_34_layer_call_fn_67333inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
эBЗ
C__inference_dense_34_layer_call_and_return_conditional_losses_67343inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
№BВ
*__inference_dropout_19_layer_call_fn_67348inputs"│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№BВ
*__inference_dropout_19_layer_call_fn_67353inputs"│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
іBЄ
E__inference_dropout_19_layer_call_and_return_conditional_losses_67358inputs"│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
іBЄ
E__inference_dropout_19_layer_call_and_return_conditional_losses_67370inputs"│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
рBя
-__inference_activation_39_layer_call_fn_67375inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЧBщ
H__inference_activation_39_layer_call_and_return_conditional_losses_67380inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
▄B┘
(__inference_dense_35_layer_call_fn_67389inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
эBЗ
C__inference_dense_35_layer_call_and_return_conditional_losses_67400inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
R
ў	variables
Ў	keras_api

џtotal

Џcount"
_tf_keras_metric
c
ю	variables
Ю	keras_api

ъtotal

Ъcount
а
_fn_kwargs"
_tf_keras_metric
0
џ0
Џ1"
trackable_list_wrapper
.
ў	variables"
_generic_user_object
:  (2total
:  (2count
0
ъ0
Ъ1"
trackable_list_wrapper
.
ю	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperБ
 __inference__wrapped_model_6684434HI@б=
6б3
1і.
conv2d_18_input         22
ф "3ф0
.
dense_35"і
dense_35         ┤
H__inference_activation_38_layer_call_and_return_conditional_losses_67303h7б4
-б*
(і%
inputs         00@
ф "-б*
#і 
0         00@
џ ї
-__inference_activation_38_layer_call_fn_67298[7б4
-б*
(і%
inputs         00@
ф " і         00@ц
H__inference_activation_39_layer_call_and_return_conditional_losses_67380X/б,
%б"
 і
inputs         @
ф "%б"
і
0         @
џ |
-__inference_activation_39_layer_call_fn_67375K/б,
%б"
 і
inputs         @
ф "і         @┤
D__inference_conv2d_18_layer_call_and_return_conditional_losses_67293l7б4
-б*
(і%
inputs         22
ф "-б*
#і 
0         00@
џ ї
)__inference_conv2d_18_layer_call_fn_67283_7б4
-б*
(і%
inputs         22
ф " і         00@ц
C__inference_dense_34_layer_call_and_return_conditional_losses_67343]340б-
&б#
!і
inputs         ђH
ф "%б"
і
0         @
џ |
(__inference_dense_34_layer_call_fn_67333P340б-
&б#
!і
inputs         ђH
ф "і         @Б
C__inference_dense_35_layer_call_and_return_conditional_losses_67400\HI/б,
%б"
 і
inputs         @
ф "%б"
і
0         
џ {
(__inference_dense_35_layer_call_fn_67389OHI/б,
%б"
 і
inputs         @
ф "і         Ц
E__inference_dropout_19_layer_call_and_return_conditional_losses_67358\3б0
)б&
 і
inputs         @
p 
ф "%б"
і
0         @
џ Ц
E__inference_dropout_19_layer_call_and_return_conditional_losses_67370\3б0
)б&
 і
inputs         @
p
ф "%б"
і
0         @
џ }
*__inference_dropout_19_layer_call_fn_67348O3б0
)б&
 і
inputs         @
p 
ф "і         @}
*__inference_dropout_19_layer_call_fn_67353O3б0
)б&
 і
inputs         @
p
ф "і         @ф
E__inference_flatten_18_layer_call_and_return_conditional_losses_67324a7б4
-б*
(і%
inputs         @
ф "&б#
і
0         ђH
џ ѓ
*__inference_flatten_18_layer_call_fn_67318T7б4
-б*
(і%
inputs         @
ф "і         ђHЬ
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_67313ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ к
0__inference_max_pooling2d_18_layer_call_fn_67308ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    ┼
H__inference_sequential_18_layer_call_and_return_conditional_losses_67128y34HIHбE
>б;
1і.
conv2d_18_input         22
p 

 
ф "%б"
і
0         
џ ┼
H__inference_sequential_18_layer_call_and_return_conditional_losses_67152y34HIHбE
>б;
1і.
conv2d_18_input         22
p

 
ф "%б"
і
0         
џ ╝
H__inference_sequential_18_layer_call_and_return_conditional_losses_67238p34HI?б<
5б2
(і%
inputs         22
p 

 
ф "%б"
і
0         
џ ╝
H__inference_sequential_18_layer_call_and_return_conditional_losses_67274p34HI?б<
5б2
(і%
inputs         22
p

 
ф "%б"
і
0         
џ Ю
-__inference_sequential_18_layer_call_fn_66958l34HIHбE
>б;
1і.
conv2d_18_input         22
p 

 
ф "і         Ю
-__inference_sequential_18_layer_call_fn_67104l34HIHбE
>б;
1і.
conv2d_18_input         22
p

 
ф "і         ћ
-__inference_sequential_18_layer_call_fn_67192c34HI?б<
5б2
(і%
inputs         22
p 

 
ф "і         ћ
-__inference_sequential_18_layer_call_fn_67209c34HI?б<
5б2
(і%
inputs         22
p

 
ф "і         ║
#__inference_signature_wrapper_67175њ34HISбP
б 
IфF
D
conv2d_18_input1і.
conv2d_18_input         22"3ф0
.
dense_35"і
dense_35         