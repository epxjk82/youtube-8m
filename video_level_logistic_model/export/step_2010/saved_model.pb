Äē
ć
9
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype
S
HistogramSummary
tag
values"T
summary"
Ttype0:
2		
.
Identity

input"T
output"T"	
Ttype
<
L2Loss
t"T
output"T"
Ttype:
2	
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	
b
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
<
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
ļ
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
A
Placeholder
output"dtype"
dtypetype"
shapeshape: 
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
-
Rsqrt
x"T
y"T"
Ttype:	
2
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
/
Sigmoid
x"T
y"T"
Ttype:	
2
y
SparseReorder
input_indices	
input_values"T
input_shape	
output_indices	
output_values"T"	
Ttype
¼
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
0
Square
x"T
y"T"
Ttype:
	2	
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
5
Sub
x"T
y"T
z"T"
Ttype:
	2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2		
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.1.02
b'unknown'óĆ
Y
PlaceholderPlaceholder*
shape: *#
_output_shapes
:’’’’’’’’’*
dtype0
U
ParseExample/ConstConst*
_output_shapes
: *
valueB *
dtype0
W
ParseExample/Const_1Const*
_output_shapes
: *
valueB *
dtype0
b
ParseExample/ParseExample/namesConst*
_output_shapes
: *
valueB *
dtype0
n
'ParseExample/ParseExample/sparse_keys_0Const*
_output_shapes
: *
valueB Blabels*
dtype0
o
&ParseExample/ParseExample/dense_keys_0Const*
_output_shapes
: *
valueB Bmean_rgb*
dtype0
o
&ParseExample/ParseExample/dense_keys_1Const*
_output_shapes
: *
valueB Bvideo_id*
dtype0
¾
ParseExample/ParseExampleParseExamplePlaceholderParseExample/ParseExample/names'ParseExample/ParseExample/sparse_keys_0&ParseExample/ParseExample/dense_keys_0&ParseExample/ParseExample/dense_keys_1ParseExample/ConstParseExample/Const_1*
Tdense
2*_
_output_shapesM
K:’’’’’’’’’:’’’’’’’’’::’’’’’’’’’:’’’’’’’’’*
Ndense*
dense_shapes
	:: *
sparse_types
2	*
Nsparse
p
SparseToIndicator/ShapeShapeParseExample/ParseExample*
_output_shapes
:*
T0	*
out_type0
o
%SparseToIndicator/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
q
'SparseToIndicator/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
q
'SparseToIndicator/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Ó
SparseToIndicator/strided_sliceStridedSliceSparseToIndicator/Shape%SparseToIndicator/strided_slice/stack'SparseToIndicator/strided_slice/stack_1'SparseToIndicator/strided_slice/stack_2*
T0*
Index0*
new_axis_mask *
ellipsis_mask *
shrink_axis_mask*
end_mask *
_output_shapes
: *

begin_mask 
b
 SparseToIndicator/ExpandDims/dimConst*
_output_shapes
: *
value	B : *
dtype0

SparseToIndicator/ExpandDims
ExpandDimsSparseToIndicator/strided_slice SparseToIndicator/ExpandDims/dim*
_output_shapes
:*
T0*

Tdim0
^
SparseToIndicator/Fill/valueConst*
_output_shapes
: *
value	B
 Z*
dtype0


SparseToIndicator/FillFillSparseToIndicator/ExpandDimsSparseToIndicator/Fill/value*#
_output_shapes
:’’’’’’’’’*
T0

d
"SparseToIndicator/ExpandDims_1/dimConst*
_output_shapes
: *
value	B :*
dtype0
«
SparseToIndicator/ExpandDims_1
ExpandDimsParseExample/ParseExample:1"SparseToIndicator/ExpandDims_1/dim*'
_output_shapes
:’’’’’’’’’*
T0	*

Tdim0
[
SparseToIndicator/Cast/xConst*
_output_shapes
: *
value
B :ģ$*
dtype0
h
SparseToIndicator/CastCastSparseToIndicator/Cast/x*

DstT0	*
_output_shapes
: *

SrcT0
x
'SparseToIndicator/strided_slice_1/stackConst*
_output_shapes
:*
valueB"        *
dtype0
z
)SparseToIndicator/strided_slice_1/stack_1Const*
_output_shapes
:*
valueB"    ’’’’*
dtype0
z
)SparseToIndicator/strided_slice_1/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
ī
!SparseToIndicator/strided_slice_1StridedSliceParseExample/ParseExample'SparseToIndicator/strided_slice_1/stack)SparseToIndicator/strided_slice_1/stack_1)SparseToIndicator/strided_slice_1/stack_2*
T0	*
Index0*
new_axis_mask *
ellipsis_mask *
shrink_axis_mask *
end_mask*'
_output_shapes
:’’’’’’’’’*

begin_mask
_
SparseToIndicator/concat/axisConst*
_output_shapes
: *
value	B :*
dtype0
Ķ
SparseToIndicator/concatConcatV2!SparseToIndicator/strided_slice_1SparseToIndicator/ExpandDims_1SparseToIndicator/concat/axis*'
_output_shapes
:’’’’’’’’’*
N*
T0	*

Tidx0
q
'SparseToIndicator/strided_slice_2/stackConst*
_output_shapes
:*
valueB: *
dtype0
|
)SparseToIndicator/strided_slice_2/stack_1Const*
_output_shapes
:*
valueB:
’’’’’’’’’*
dtype0
s
)SparseToIndicator/strided_slice_2/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ć
!SparseToIndicator/strided_slice_2StridedSliceParseExample/ParseExample:2'SparseToIndicator/strided_slice_2/stack)SparseToIndicator/strided_slice_2/stack_1)SparseToIndicator/strided_slice_2/stack_2*
T0	*
Index0*
new_axis_mask *
ellipsis_mask *
shrink_axis_mask *
end_mask *
_output_shapes
:*

begin_mask
}
#SparseToIndicator/concat_1/values_1PackSparseToIndicator/Cast*

axis *
N*
_output_shapes
:*
T0	
a
SparseToIndicator/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
É
SparseToIndicator/concat_1ConcatV2!SparseToIndicator/strided_slice_2#SparseToIndicator/concat_1/values_1SparseToIndicator/concat_1/axis*
_output_shapes
:*
N*
T0	*

Tidx0
æ
SparseToIndicator/SparseReorderSparseReorderSparseToIndicator/concatSparseToIndicator/FillSparseToIndicator/concat_1*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’*
T0

g
SparseToIndicator/IdentityIdentitySparseToIndicator/concat_1*
_output_shapes
:*
T0	
a
SparseToIndicator/default_valueConst*
_output_shapes
: *
value	B
 Z *
dtype0

ž
SparseToIndicatorSparseToDenseSparseToIndicator/SparseReorderSparseToIndicator/Identity!SparseToIndicator/SparseReorder:1SparseToIndicator/default_value*(
_output_shapes
:’’’’’’’’’ģ$*
validate_indices( *
T0
*
Tindices0	
S
concat/concat_dimConst*
_output_shapes
: *
value	B :*
dtype0
b
concatIdentityParseExample/ParseExample:3*(
_output_shapes
:’’’’’’’’’*
T0
P
ShapeShapePlaceholder*
_output_shapes
:*
T0*
out_type0
]
strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
_
strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
_
strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ł
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
T0*
Index0*
new_axis_mask *
ellipsis_mask *
shrink_axis_mask*
end_mask *
_output_shapes
: *

begin_mask 
[

ones/shapePackstrided_slice*

axis *
N*
_output_shapes
:*
T0
O

ones/ConstConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
R
onesFill
ones/shape
ones/Const*#
_output_shapes
:’’’’’’’’’*
T0
X
l2_normalize/SquareSquareconcat*(
_output_shapes
:’’’’’’’’’*
T0
d
"l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
value	B :*
dtype0

l2_normalize/SumSuml2_normalize/Square"l2_normalize/Sum/reduction_indices*
	keep_dims(*'
_output_shapes
:’’’’’’’’’*

Tidx0*
T0
[
l2_normalize/Maximum/yConst*
_output_shapes
: *
valueB
 *Ģ¼+*
dtype0
{
l2_normalize/MaximumMaximuml2_normalize/Suml2_normalize/Maximum/y*'
_output_shapes
:’’’’’’’’’*
T0
c
l2_normalize/RsqrtRsqrtl2_normalize/Maximum*'
_output_shapes
:’’’’’’’’’*
T0
b
l2_normalizeMulconcatl2_normalize/Rsqrt*(
_output_shapes
:’’’’’’’’’*
T0
Į
>tower/fully_connected/weights/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"   l  *0
_class&
$"loc:@tower/fully_connected/weights*
dtype0
³
<tower/fully_connected/weights/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *m½*0
_class&
$"loc:@tower/fully_connected/weights*
dtype0
³
<tower/fully_connected/weights/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *m=*0
_class&
$"loc:@tower/fully_connected/weights*
dtype0

Ftower/fully_connected/weights/Initializer/random_uniform/RandomUniformRandomUniform>tower/fully_connected/weights/Initializer/random_uniform/shape*

seed * 
_output_shapes
:
ģ$*
seed2 *0
_class&
$"loc:@tower/fully_connected/weights*
T0*
dtype0

<tower/fully_connected/weights/Initializer/random_uniform/subSub<tower/fully_connected/weights/Initializer/random_uniform/max<tower/fully_connected/weights/Initializer/random_uniform/min*
_output_shapes
: *
T0*0
_class&
$"loc:@tower/fully_connected/weights
¦
<tower/fully_connected/weights/Initializer/random_uniform/mulMulFtower/fully_connected/weights/Initializer/random_uniform/RandomUniform<tower/fully_connected/weights/Initializer/random_uniform/sub* 
_output_shapes
:
ģ$*
T0*0
_class&
$"loc:@tower/fully_connected/weights

8tower/fully_connected/weights/Initializer/random_uniformAdd<tower/fully_connected/weights/Initializer/random_uniform/mul<tower/fully_connected/weights/Initializer/random_uniform/min* 
_output_shapes
:
ģ$*
T0*0
_class&
$"loc:@tower/fully_connected/weights
Ē
tower/fully_connected/weights
VariableV2*
	container *
shape:
ģ$* 
_output_shapes
:
ģ$*0
_class&
$"loc:@tower/fully_connected/weights*
shared_name *
dtype0

$tower/fully_connected/weights/AssignAssigntower/fully_connected/weights8tower/fully_connected/weights/Initializer/random_uniform*
T0* 
_output_shapes
:
ģ$*
use_locking(*
validate_shape(*0
_class&
$"loc:@tower/fully_connected/weights
Ŗ
"tower/fully_connected/weights/readIdentitytower/fully_connected/weights* 
_output_shapes
:
ģ$*
T0*0
_class&
$"loc:@tower/fully_connected/weights
“
=tower/fully_connected/kernel/Regularizer/l2_regularizer/scaleConst*
_output_shapes
: *
valueB
 *wĢ+2*0
_class&
$"loc:@tower/fully_connected/weights*
dtype0
æ
>tower/fully_connected/kernel/Regularizer/l2_regularizer/L2LossL2Loss"tower/fully_connected/weights/read*
_output_shapes
: *
T0*0
_class&
$"loc:@tower/fully_connected/weights

7tower/fully_connected/kernel/Regularizer/l2_regularizerMul=tower/fully_connected/kernel/Regularizer/l2_regularizer/scale>tower/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0*0
_class&
$"loc:@tower/fully_connected/weights
®
.tower/fully_connected/biases/Initializer/ConstConst*
_output_shapes	
:ģ$*
valueBģ$*    */
_class%
#!loc:@tower/fully_connected/biases*
dtype0
»
tower/fully_connected/biases
VariableV2*
	container *
shape:ģ$*
_output_shapes	
:ģ$*/
_class%
#!loc:@tower/fully_connected/biases*
shared_name *
dtype0
ū
#tower/fully_connected/biases/AssignAssigntower/fully_connected/biases.tower/fully_connected/biases/Initializer/Const*
T0*
_output_shapes	
:ģ$*
use_locking(*
validate_shape(*/
_class%
#!loc:@tower/fully_connected/biases
¢
!tower/fully_connected/biases/readIdentitytower/fully_connected/biases*
_output_shapes	
:ģ$*
T0*/
_class%
#!loc:@tower/fully_connected/biases
±
tower/fully_connected/MatMulMatMull2_normalize"tower/fully_connected/weights/read*(
_output_shapes
:’’’’’’’’’ģ$*
transpose_b( *
T0*
transpose_a( 
³
tower/fully_connected/BiasAddBiasAddtower/fully_connected/MatMul!tower/fully_connected/biases/read*(
_output_shapes
:’’’’’’’’’ģ$*
T0*
data_formatNHWC
z
tower/fully_connected/SigmoidSigmoidtower/fully_connected/BiasAdd*(
_output_shapes
:’’’’’’’’’ģ$*
T0

'tower/tower/fully_connected/weights/tagConst*
_output_shapes
: *4
value+B) B#tower/tower/fully_connected/weights*
dtype0
„
#tower/tower/fully_connected/weightsHistogramSummary'tower/tower/fully_connected/weights/tag"tower/fully_connected/weights/read*
_output_shapes
: *
T0

&tower/tower/fully_connected/biases/tagConst*
_output_shapes
: *3
value*B( B"tower/tower/fully_connected/biases*
dtype0
¢
"tower/tower/fully_connected/biasesHistogramSummary&tower/tower/fully_connected/biases/tag!tower/fully_connected/biases/read*
_output_shapes
: *
T0
P
tower/TopKV2/kConst*
_output_shapes
: *
value	B :*
dtype0

tower/TopKV2TopKV2tower/fully_connected/Sigmoidtower/TopKV2/k*
sorted(*:
_output_shapes(
&:’’’’’’’’’:’’’’’’’’’*
T0
P

save/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0

save/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_71c686b8b88c435599884d1e6746026d/part*
dtype0
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
\
save/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 

save/SaveV2/tensor_namesConst*
_output_shapes
:*P
valueGBEBtower/fully_connected/biasesBtower/fully_connected/weights*
dtype0
g
save/SaveV2/shape_and_slicesConst*
_output_shapes
:*
valueBB B *
dtype0
²
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicestower/fully_connected/biasestower/fully_connected/weights*
dtypes
2

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*

axis *
N*
_output_shapes
:*
T0
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
_output_shapes
: *
T0

save/RestoreV2/tensor_namesConst*
_output_shapes
:*1
value(B&Btower/fully_connected/biases*
dtype0
h
save/RestoreV2/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
Ć
save/AssignAssigntower/fully_connected/biasessave/RestoreV2*
T0*
_output_shapes	
:ģ$*
use_locking(*
validate_shape(*/
_class%
#!loc:@tower/fully_connected/biases

save/RestoreV2_1/tensor_namesConst*
_output_shapes
:*2
value)B'Btower/fully_connected/weights*
dtype0
j
!save/RestoreV2_1/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
Ī
save/Assign_1Assigntower/fully_connected/weightssave/RestoreV2_1*
T0* 
_output_shapes
:
ģ$*
use_locking(*
validate_shape(*0
_class&
$"loc:@tower/fully_connected/weights
8
save/restore_shardNoOp^save/Assign^save/Assign_1
-
save/restore_allNoOp^save/restore_shard
Y
initNoOp%^tower/fully_connected/weights/Assign$^tower/fully_connected/biases/Assign
R
save_1/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0

save_1/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_0c0bd8cebd884fa8bed3c96c16626629/part*
dtype0
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
^
save_1/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 

save_1/SaveV2/tensor_namesConst*
_output_shapes
:*P
valueGBEBtower/fully_connected/biasesBtower/fully_connected/weights*
dtype0
i
save_1/SaveV2/shape_and_slicesConst*
_output_shapes
:*
valueBB B *
dtype0
ŗ
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicestower/fully_connected/biasestower/fully_connected/weights*
dtypes
2

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_1/ShardedFilename
£
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*

axis *
N*
_output_shapes
:*
T0

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
_output_shapes
: *
T0

save_1/RestoreV2/tensor_namesConst*
_output_shapes
:*1
value(B&Btower/fully_connected/biases*
dtype0
j
!save_1/RestoreV2/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
Ē
save_1/AssignAssigntower/fully_connected/biasessave_1/RestoreV2*
T0*
_output_shapes	
:ģ$*
use_locking(*
validate_shape(*/
_class%
#!loc:@tower/fully_connected/biases

save_1/RestoreV2_1/tensor_namesConst*
_output_shapes
:*2
value)B'Btower/fully_connected/weights*
dtype0
l
#save_1/RestoreV2_1/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
Ņ
save_1/Assign_1Assigntower/fully_connected/weightssave_1/RestoreV2_1*
T0* 
_output_shapes
:
ģ$*
use_locking(*
validate_shape(*0
_class&
$"loc:@tower/fully_connected/weights
>
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1
1
save_1/restore_allNoOp^save_1/restore_shard
[
init_1NoOp%^tower/fully_connected/weights/Assign$^tower/fully_connected/biases/Assign
R
save_2/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0

save_2/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_30a7ecf95efb436cbdb1ad08dc448be5/part*
dtype0
{
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_2/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
^
save_2/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0

save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards*
_output_shapes
: 

save_2/SaveV2/tensor_namesConst*
_output_shapes
:*P
valueGBEBtower/fully_connected/biasesBtower/fully_connected/weights*
dtype0
i
save_2/SaveV2/shape_and_slicesConst*
_output_shapes
:*
valueBB B *
dtype0
ŗ
save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicestower/fully_connected/biasestower/fully_connected/weights*
dtypes
2

save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_2/ShardedFilename
£
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilename^save_2/control_dependency*

axis *
N*
_output_shapes
:*
T0

save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const*
delete_old_dirs(

save_2/IdentityIdentitysave_2/Const^save_2/control_dependency^save_2/MergeV2Checkpoints*
_output_shapes
: *
T0

save_2/RestoreV2/tensor_namesConst*
_output_shapes
:*1
value(B&Btower/fully_connected/biases*
dtype0
j
!save_2/RestoreV2/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
Ē
save_2/AssignAssigntower/fully_connected/biasessave_2/RestoreV2*
T0*
_output_shapes	
:ģ$*
use_locking(*
validate_shape(*/
_class%
#!loc:@tower/fully_connected/biases

save_2/RestoreV2_1/tensor_namesConst*
_output_shapes
:*2
value)B'Btower/fully_connected/weights*
dtype0
l
#save_2/RestoreV2_1/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save_2/RestoreV2_1	RestoreV2save_2/Constsave_2/RestoreV2_1/tensor_names#save_2/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
Ņ
save_2/Assign_1Assigntower/fully_connected/weightssave_2/RestoreV2_1*
T0* 
_output_shapes
:
ģ$*
use_locking(*
validate_shape(*0
_class&
$"loc:@tower/fully_connected/weights
>
save_2/restore_shardNoOp^save_2/Assign^save_2/Assign_1
1
save_2/restore_allNoOp^save_2/restore_shard
[
init_2NoOp%^tower/fully_connected/weights/Assign$^tower/fully_connected/biases/Assign
R
save_3/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0

save_3/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_aaf5a800600c4b16b63c7ea1cc570ff8/part*
dtype0
{
save_3/StringJoin
StringJoinsave_3/Constsave_3/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_3/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
^
save_3/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0

save_3/ShardedFilenameShardedFilenamesave_3/StringJoinsave_3/ShardedFilename/shardsave_3/num_shards*
_output_shapes
: 

save_3/SaveV2/tensor_namesConst*
_output_shapes
:*P
valueGBEBtower/fully_connected/biasesBtower/fully_connected/weights*
dtype0
i
save_3/SaveV2/shape_and_slicesConst*
_output_shapes
:*
valueBB B *
dtype0
ŗ
save_3/SaveV2SaveV2save_3/ShardedFilenamesave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slicestower/fully_connected/biasestower/fully_connected/weights*
dtypes
2

save_3/control_dependencyIdentitysave_3/ShardedFilename^save_3/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_3/ShardedFilename
£
-save_3/MergeV2Checkpoints/checkpoint_prefixesPacksave_3/ShardedFilename^save_3/control_dependency*

axis *
N*
_output_shapes
:*
T0

save_3/MergeV2CheckpointsMergeV2Checkpoints-save_3/MergeV2Checkpoints/checkpoint_prefixessave_3/Const*
delete_old_dirs(

save_3/IdentityIdentitysave_3/Const^save_3/control_dependency^save_3/MergeV2Checkpoints*
_output_shapes
: *
T0

save_3/RestoreV2/tensor_namesConst*
_output_shapes
:*1
value(B&Btower/fully_connected/biases*
dtype0
j
!save_3/RestoreV2/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
Ē
save_3/AssignAssigntower/fully_connected/biasessave_3/RestoreV2*
T0*
_output_shapes	
:ģ$*
use_locking(*
validate_shape(*/
_class%
#!loc:@tower/fully_connected/biases

save_3/RestoreV2_1/tensor_namesConst*
_output_shapes
:*2
value)B'Btower/fully_connected/weights*
dtype0
l
#save_3/RestoreV2_1/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save_3/RestoreV2_1	RestoreV2save_3/Constsave_3/RestoreV2_1/tensor_names#save_3/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
Ņ
save_3/Assign_1Assigntower/fully_connected/weightssave_3/RestoreV2_1*
T0* 
_output_shapes
:
ģ$*
use_locking(*
validate_shape(*0
_class&
$"loc:@tower/fully_connected/weights
>
save_3/restore_shardNoOp^save_3/Assign^save_3/Assign_1
1
save_3/restore_allNoOp^save_3/restore_shard"B
save_3/Const:0save_3/Identity:0save_3/restore_all (5 @F8"\
	summariesO
M
%tower/tower/fully_connected/weights:0
$tower/tower/fully_connected/biases:0"V
regularization_losses=
;
9tower/fully_connected/kernel/Regularizer/l2_regularizer:0"V
model_variablesC
A
tower/fully_connected/weights:0
tower/fully_connected/biases:0"ģ
	variablesŽŪ
m
tower/fully_connected/weights:0$tower/fully_connected/weights/Assign$tower/fully_connected/weights/read:0
j
tower/fully_connected/biases:0#tower/fully_connected/biases/Assign#tower/fully_connected/biases/read:0"ö
trainable_variablesŽŪ
m
tower/fully_connected/weights:0$tower/fully_connected/weights/Assign$tower/fully_connected/weights/read:0
j
tower/fully_connected/biases:0#tower/fully_connected/biases/Assign#tower/fully_connected/biases/read:0*
serving_defaultł
1
example_bytes 
Placeholder:0’’’’’’’’’4
predictions%
tower/TopKV2:0’’’’’’’’’6
class_indexes%
tower/TopKV2:1’’’’’’’’’:
video_id.
ParseExample/ParseExample:4’’’’’’’’’tensorflow/serving/predict