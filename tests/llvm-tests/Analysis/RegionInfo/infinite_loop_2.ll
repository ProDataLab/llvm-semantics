; RUN: opt -regions -analyze < %s
; RUN: opt -regions -stats < %s |& FileCheck -check-prefix=STAT %s
; RUN: opt -regions -print-region-style=bb  -analyze < %s |& FileCheck -check-prefix=BBIT %s
; RUN: opt -regions -print-region-style=rn  -analyze < %s |& FileCheck -check-prefix=RNIT %s

define void @normal_condition() nounwind {
0:
	br label %"1"
1:
	br i1 1, label %"2", label %"3"
2:
	br label %"5"
5:
	br i1 1, label %"11", label %"12"
11:
        br label %"6"
12:
        br label %"6"
6:
        br label %"2"
3:
	br label %"4"
4:
	ret void
}
; CHECK-NOT: =>
; CHECK: [0] 0 => <Function Return>
; CHECK: [1] 1 => 3
; STAT: 2 region - The # of regions
; STAT: 1 region - The # of simple regions

; BBIT: 0, 1, 2, 5, 11, 6, 12, 3, 4,
; BBIT: 1, 2, 5, 11, 6, 12,

; RNIT: 0, 1 => 3, 3, 4,
; RNIT: 1, 2, 5, 11, 6, 12,
