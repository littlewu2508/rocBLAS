!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Copyright (C) 2020-2022 Advanced Micro Devices, Inc. All rights reserved.
!
! Permission is hereby granted, free of charge, to any person obtaining a copy
! of this software and associated documentation files (the "Software"), to deal
! in the Software without restriction, including without limitation the rights
! to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
! copies of the Software, and to permit persons to whom the Software is
! furnished to do so, subject to the following conditions:
!
! The above copyright notice and this permission notice shall be included in
! all copies or substantial portions of the Software.
!
! THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
! IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
! FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
! AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
! LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
! OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
! THE SOFTWARE.
!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

! This file interfaces between the unit test infrastructure and the Fortran
! rocblas module.

module rocblas_interface_tensile
    use iso_c_binding
    use rocblas

    contains

    !--------!
    ! blas 2 !
    !--------!

    !--------!
    ! blas 3 !
    !--------!

    ! trtri
    function rocblas_strtri_fortran(handle, uplo, diag, n, &
            A, lda, invA, ldinvA) &
            result(res) &
            bind(c, name = 'rocblas_strtri_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_fill_full)), value :: uplo
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: n
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        type(c_ptr), value :: invA
        integer(c_int), value :: ldinvA
        integer(c_int) :: res
        res = rocblas_strtri(handle, uplo, diag, n, &
            A, lda, invA, ldinvA)
    end function rocblas_strtri_fortran

    function rocblas_dtrtri_fortran(handle, uplo, diag, n, &
            A, lda, invA, ldinvA) &
            result(res) &
            bind(c, name = 'rocblas_dtrtri_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_fill_full)), value :: uplo
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: n
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        type(c_ptr), value :: invA
        integer(c_int), value :: ldinvA
        integer(c_int) :: res
        res = rocblas_dtrtri(handle, uplo, diag, n, &
            A, lda, invA, ldinvA)
    end function rocblas_dtrtri_fortran

    function rocblas_ctrtri_fortran(handle, uplo, diag, n, &
            A, lda, invA, ldinvA) &
            result(res) &
            bind(c, name = 'rocblas_ctrtri_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_fill_full)), value :: uplo
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: n
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        type(c_ptr), value :: invA
        integer(c_int), value :: ldinvA
        integer(c_int) :: res
        res = rocblas_ctrtri(handle, uplo, diag, n, &
            A, lda, invA, ldinvA)
    end function rocblas_ctrtri_fortran

    function rocblas_ztrtri_fortran(handle, uplo, diag, n, &
            A, lda, invA, ldinvA) &
            result(res) &
            bind(c, name = 'rocblas_ztrtri_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_fill_full)), value :: uplo
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: n
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        type(c_ptr), value :: invA
        integer(c_int), value :: ldinvA
        integer(c_int) :: res
        res = rocblas_ztrtri(handle, uplo, diag, n, &
            A, lda, invA, ldinvA)
    end function rocblas_ztrtri_fortran

    ! trtri_batched
    function rocblas_strtri_batched_fortran(handle, uplo, diag, n, &
            A, lda, invA, ldinvA, batch_count) &
            result(res) &
            bind(c, name = 'rocblas_strtri_batched_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_fill_full)), value :: uplo
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: n
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        type(c_ptr), value :: invA
        integer(c_int), value :: ldinvA
        integer(c_int), value :: batch_count
        integer(c_int) :: res
        res = rocblas_strtri_batched(handle, uplo, diag, n, &
            A, lda, invA, ldinvA, batch_count)
    end function rocblas_strtri_batched_fortran

    function rocblas_dtrtri_batched_fortran(handle, uplo, diag, n, &
            A, lda, invA, ldinvA, batch_count) &
            result(res) &
            bind(c, name = 'rocblas_dtrtri_batched_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_fill_full)), value :: uplo
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: n
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        type(c_ptr), value :: invA
        integer(c_int), value :: ldinvA
        integer(c_int), value :: batch_count
        integer(c_int) :: res
        res = rocblas_dtrtri_batched(handle, uplo, diag, n, &
            A, lda, invA, ldinvA, batch_count)
    end function rocblas_dtrtri_batched_fortran

    function rocblas_ctrtri_batched_fortran(handle, uplo, diag, n, &
            A, lda, invA, ldinvA, batch_count) &
            result(res) &
            bind(c, name = 'rocblas_ctrtri_batched_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_fill_full)), value :: uplo
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: n
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        type(c_ptr), value :: invA
        integer(c_int), value :: ldinvA
        integer(c_int), value :: batch_count
        integer(c_int) :: res
        res = rocblas_ctrtri_batched(handle, uplo, diag, n, &
            A, lda, invA, ldinvA, batch_count)
    end function rocblas_ctrtri_batched_fortran

    function rocblas_ztrtri_batched_fortran(handle, uplo, diag, n, &
            A, lda, invA, ldinvA, batch_count) &
            result(res) &
            bind(c, name = 'rocblas_ztrtri_batched_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_fill_full)), value :: uplo
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: n
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        type(c_ptr), value :: invA
        integer(c_int), value :: ldinvA
        integer(c_int), value :: batch_count
        integer(c_int) :: res
        res = rocblas_ztrtri_batched(handle, uplo, diag, n, &
            A, lda, invA, ldinvA, batch_count)
    end function rocblas_ztrtri_batched_fortran

    ! trtri_strided_batched
    function rocblas_strtri_strided_batched_fortran(handle, uplo, diag, n, &
            A, lda, stride_A, invA, ldinvA, stride_invA, batch_count) &
            result(res) &
            bind(c, name = 'rocblas_strtri_strided_batched_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_fill_full)), value :: uplo
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: n
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        integer(c_int64_t), value :: stride_A
        type(c_ptr), value :: invA
        integer(c_int), value :: ldinvA
        integer(c_int64_t), value :: stride_invA
        integer(c_int), value :: batch_count
        integer(c_int) :: res
        res = rocblas_strtri_strided_batched(handle, uplo, diag, n, &
            A, lda, stride_A, invA, ldinvA, stride_invA, batch_count)
    end function rocblas_strtri_strided_batched_fortran

    function rocblas_dtrtri_strided_batched_fortran(handle, uplo, diag, n, &
            A, lda, stride_A, invA, ldinvA, stride_invA, batch_count) &
            result(res) &
            bind(c, name = 'rocblas_dtrtri_strided_batched_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_fill_full)), value :: uplo
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: n
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        integer(c_int64_t), value :: stride_A
        type(c_ptr), value :: invA
        integer(c_int), value :: ldinvA
        integer(c_int64_t), value :: stride_invA
        integer(c_int), value :: batch_count
        integer(c_int) :: res
        res = rocblas_dtrtri_strided_batched(handle, uplo, diag, n, &
            A, lda, stride_A, invA, ldinvA, stride_invA, batch_count)
    end function rocblas_dtrtri_strided_batched_fortran

    function rocblas_ctrtri_strided_batched_fortran(handle, uplo, diag, n, &
            A, lda, stride_A, invA, ldinvA, stride_invA, batch_count) &
            result(res) &
            bind(c, name = 'rocblas_ctrtri_strided_batched_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_fill_full)), value :: uplo
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: n
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        integer(c_int64_t), value :: stride_A
        type(c_ptr), value :: invA
        integer(c_int), value :: ldinvA
        integer(c_int64_t), value :: stride_invA
        integer(c_int), value :: batch_count
        integer(c_int) :: res
        res = rocblas_ctrtri_strided_batched(handle, uplo, diag, n, &
            A, lda, stride_A, invA, ldinvA, stride_invA, batch_count)
    end function rocblas_ctrtri_strided_batched_fortran

    function rocblas_ztrtri_strided_batched_fortran(handle, uplo, diag, n, &
            A, lda, stride_A, invA, ldinvA, stride_invA, batch_count) &
            result(res) &
            bind(c, name = 'rocblas_ztrtri_strided_batched_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_fill_full)), value :: uplo
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: n
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        integer(c_int64_t), value :: stride_A
        type(c_ptr), value :: invA
        integer(c_int), value :: ldinvA
        integer(c_int64_t), value :: stride_invA
        integer(c_int), value :: batch_count
        integer(c_int) :: res
        res = rocblas_ztrtri_strided_batched(handle, uplo, diag, n, &
            A, lda, stride_A, invA, ldinvA, stride_invA, batch_count)
    end function rocblas_ztrtri_strided_batched_fortran

    ! trsm
    function rocblas_strsm_fortran(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, B, ldb) &
            result(res) &
            bind(c, name = 'rocblas_strsm_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_side_left)), value :: side
        integer(kind(rocblas_fill_full)), value :: uplo
        integer(kind(rocblas_operation_none)), value :: transA
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: m
        integer(c_int), value :: n
        type(c_ptr), value :: alpha
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        type(c_ptr), value :: B
        integer(c_int), value :: ldb
        integer(c_int) :: res
        res = rocblas_strsm(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, B, ldb)
    end function rocblas_strsm_fortran

    function rocblas_dtrsm_fortran(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, B, ldb) &
            result(res) &
            bind(c, name = 'rocblas_dtrsm_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_side_left)), value :: side
        integer(kind(rocblas_fill_full)), value :: uplo
        integer(kind(rocblas_operation_none)), value :: transA
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: m
        integer(c_int), value :: n
        type(c_ptr), value :: alpha
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        type(c_ptr), value :: B
        integer(c_int), value :: ldb
        integer(c_int) :: res
        res = rocblas_dtrsm(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, B, ldb)
    end function rocblas_dtrsm_fortran

    function rocblas_ctrsm_fortran(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, B, ldb) &
            result(res) &
            bind(c, name = 'rocblas_ctrsm_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_side_left)), value :: side
        integer(kind(rocblas_fill_full)), value :: uplo
        integer(kind(rocblas_operation_none)), value :: transA
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: m
        integer(c_int), value :: n
        type(c_ptr), value :: alpha
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        type(c_ptr), value :: B
        integer(c_int), value :: ldb
        integer(c_int) :: res
        res = rocblas_ctrsm(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, B, ldb)
    end function rocblas_ctrsm_fortran

    function rocblas_ztrsm_fortran(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, B, ldb) &
            result(res) &
            bind(c, name = 'rocblas_ztrsm_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_side_left)), value :: side
        integer(kind(rocblas_fill_full)), value :: uplo
        integer(kind(rocblas_operation_none)), value :: transA
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: m
        integer(c_int), value :: n
        type(c_ptr), value :: alpha
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        type(c_ptr), value :: B
        integer(c_int), value :: ldb
        integer(c_int) :: res
        res = rocblas_ztrsm(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, B, ldb)
    end function rocblas_ztrsm_fortran

    ! trsm_batched
    function rocblas_strsm_batched_fortran(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, B, ldb, batch_count) &
            result(res) &
            bind(c, name = 'rocblas_strsm_batched_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_side_left)), value :: side
        integer(kind(rocblas_fill_full)), value :: uplo
        integer(kind(rocblas_operation_none)), value :: transA
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: m
        integer(c_int), value :: n
        type(c_ptr), value :: alpha
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        type(c_ptr), value :: B
        integer(c_int), value :: ldb
        integer(c_int), value :: batch_count
        integer(c_int) :: res
        res = rocblas_strsm_batched(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, B, ldb, batch_count)
    end function rocblas_strsm_batched_fortran

    function rocblas_dtrsm_batched_fortran(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, B, ldb, batch_count) &
            result(res) &
            bind(c, name = 'rocblas_dtrsm_batched_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_side_left)), value :: side
        integer(kind(rocblas_fill_full)), value :: uplo
        integer(kind(rocblas_operation_none)), value :: transA
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: m
        integer(c_int), value :: n
        type(c_ptr), value :: alpha
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        type(c_ptr), value :: B
        integer(c_int), value :: ldb
        integer(c_int), value :: batch_count
        integer(c_int) :: res
        res = rocblas_dtrsm_batched(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, B, ldb, batch_count)
    end function rocblas_dtrsm_batched_fortran

    function rocblas_ctrsm_batched_fortran(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, B, ldb, batch_count) &
            result(res) &
            bind(c, name = 'rocblas_ctrsm_batched_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_side_left)), value :: side
        integer(kind(rocblas_fill_full)), value :: uplo
        integer(kind(rocblas_operation_none)), value :: transA
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: m
        integer(c_int), value :: n
        type(c_ptr), value :: alpha
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        type(c_ptr), value :: B
        integer(c_int), value :: ldb
        integer(c_int), value :: batch_count
        integer(c_int) :: res
        res = rocblas_ctrsm_batched(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, B, ldb, batch_count)
    end function rocblas_ctrsm_batched_fortran

    function rocblas_ztrsm_batched_fortran(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, B, ldb, batch_count) &
            result(res) &
            bind(c, name = 'rocblas_ztrsm_batched_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_side_left)), value :: side
        integer(kind(rocblas_fill_full)), value :: uplo
        integer(kind(rocblas_operation_none)), value :: transA
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: m
        integer(c_int), value :: n
        type(c_ptr), value :: alpha
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        type(c_ptr), value :: B
        integer(c_int), value :: ldb
        integer(c_int), value :: batch_count
        integer(c_int) :: res
        res = rocblas_ztrsm_batched(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, B, ldb, batch_count)
    end function rocblas_ztrsm_batched_fortran

    ! trsm_strided_batched
    function rocblas_strsm_strided_batched_fortran(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, stride_A, B, ldb, stride_B, batch_count) &
            result(res) &
            bind(c, name = 'rocblas_strsm_strided_batched_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_side_left)), value :: side
        integer(kind(rocblas_fill_full)), value :: uplo
        integer(kind(rocblas_operation_none)), value :: transA
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: m
        integer(c_int), value :: n
        type(c_ptr), value :: alpha
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        integer(c_int64_t), value :: stride_A
        type(c_ptr), value :: B
        integer(c_int), value :: ldb
        integer(c_int64_t), value :: stride_B
        integer(c_int), value :: batch_count
        integer(c_int) :: res
        res = rocblas_strsm_strided_batched(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, stride_A, B, ldb, stride_B, batch_count)
    end function rocblas_strsm_strided_batched_fortran

    function rocblas_dtrsm_strided_batched_fortran(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, stride_A, B, ldb, stride_B, batch_count) &
            result(res) &
            bind(c, name = 'rocblas_dtrsm_strided_batched_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_side_left)), value :: side
        integer(kind(rocblas_fill_full)), value :: uplo
        integer(kind(rocblas_operation_none)), value :: transA
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: m
        integer(c_int), value :: n
        type(c_ptr), value :: alpha
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        integer(c_int64_t), value :: stride_A
        type(c_ptr), value :: B
        integer(c_int), value :: ldb
        integer(c_int64_t), value :: stride_B
        integer(c_int), value :: batch_count
        integer(c_int) :: res
        res = rocblas_dtrsm_strided_batched(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, stride_A, B, ldb, stride_B, batch_count)
    end function rocblas_dtrsm_strided_batched_fortran

    function rocblas_ctrsm_strided_batched_fortran(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, stride_A, B, ldb, stride_B, batch_count) &
            result(res) &
            bind(c, name = 'rocblas_ctrsm_strided_batched_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_side_left)), value :: side
        integer(kind(rocblas_fill_full)), value :: uplo
        integer(kind(rocblas_operation_none)), value :: transA
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: m
        integer(c_int), value :: n
        type(c_ptr), value :: alpha
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        integer(c_int64_t), value :: stride_A
        type(c_ptr), value :: B
        integer(c_int), value :: ldb
        integer(c_int64_t), value :: stride_B
        integer(c_int), value :: batch_count
        integer(c_int) :: res
        res = rocblas_ctrsm_strided_batched(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, stride_A, B, ldb, stride_B, batch_count)
    end function rocblas_ctrsm_strided_batched_fortran

    function rocblas_ztrsm_strided_batched_fortran(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, stride_A, B, ldb, stride_B, batch_count) &
            result(res) &
            bind(c, name = 'rocblas_ztrsm_strided_batched_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_side_left)), value :: side
        integer(kind(rocblas_fill_full)), value :: uplo
        integer(kind(rocblas_operation_none)), value :: transA
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: m
        integer(c_int), value :: n
        type(c_ptr), value :: alpha
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        integer(c_int64_t), value :: stride_A
        type(c_ptr), value :: B
        integer(c_int), value :: ldb
        integer(c_int64_t), value :: stride_B
        integer(c_int), value :: batch_count
        integer(c_int) :: res
        res = rocblas_ztrsm_strided_batched(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, stride_A, B, ldb, stride_B, batch_count)
    end function rocblas_ztrsm_strided_batched_fortran

    !-----------------!
    ! blas Extensions !
    !-----------------!

    ! gemm_ex
    function rocblas_gemm_ex_fortran(handle, transA, transB, m, n, k, alpha, a, a_type, lda, &
            b, b_type, ldb, beta, c, c_type, ldc, d, d_type, ldd, &
            compute_type, algo, solution_index, flags) &
            result(res) &
            bind(c, name = 'rocblas_gemm_ex_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_operation_none)), value :: transA
        integer(kind(rocblas_operation_none)), value :: transB
        integer(c_int), value :: m
        integer(c_int), value :: n
        integer(c_int), value :: k
        type(c_ptr), value :: alpha
        type(c_ptr), value :: a
        integer(kind(rocblas_datatype_f16_r)), value :: a_type
        integer(c_int), value :: lda
        type(c_ptr), value :: b
        integer(kind(rocblas_datatype_f16_r)), value :: b_type
        integer(c_int), value :: ldb
        type(c_ptr), value :: beta
        type(c_ptr), value :: c
        integer(kind(rocblas_datatype_f16_r)), value :: c_type
        integer(c_int), value :: ldc
        type(c_ptr), value :: d
        integer(kind(rocblas_datatype_f16_r)), value :: d_type
        integer(c_int), value :: ldd
        integer(kind(rocblas_datatype_f16_r)), value :: compute_type
        integer(kind(rocblas_gemm_algo_standard)), value :: algo
        integer(c_int32_t), value :: solution_index
        ! No unsigned types in fortran. If larger values are needed
        ! we will need a workaround.
        integer(c_int32_t), value :: flags
        integer(c_int) :: res
        res = rocblas_gemm_ex(handle, transA, transB, m, n, k, alpha, a, a_type, lda, &
            b, b_type, ldb, beta, c, c_type, ldc, d, d_type, ldd, &
            compute_type, algo, solution_index, flags)
    end function rocblas_gemm_ex_fortran

    function rocblas_gemm_batched_ex_fortran(handle, transA, transB, m, n, k, alpha, a, a_type, lda, &
            b, b_type, ldb, beta, c, c_type, ldc, d, d_type, ldd, &
            batch_count, compute_type, algo, solution_index, flags) &
            result(res) &
            bind(c, name = 'rocblas_gemm_batched_ex_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_operation_none)), value :: transA
        integer(kind(rocblas_operation_none)), value :: transB
        integer(c_int), value :: m
        integer(c_int), value :: n
        integer(c_int), value :: k
        type(c_ptr), value :: alpha
        type(c_ptr), value :: a
        integer(kind(rocblas_datatype_f16_r)), value :: a_type
        integer(c_int), value :: lda
        type(c_ptr), value :: b
        integer(kind(rocblas_datatype_f16_r)), value :: b_type
        integer(c_int), value :: ldb
        type(c_ptr), value :: beta
        type(c_ptr), value :: c
        integer(kind(rocblas_datatype_f16_r)), value :: c_type
        integer(c_int), value :: ldc
        type(c_ptr), value :: d
        integer(kind(rocblas_datatype_f16_r)), value :: d_type
        integer(c_int), value :: ldd
        integer(c_int), value :: batch_count
        integer(kind(rocblas_datatype_f16_r)), value :: compute_type
        integer(kind(rocblas_gemm_algo_standard)), value :: algo
        integer(c_int32_t), value :: solution_index
        ! No unsigned types in fortran. If larger values are needed
        ! we will need a workaround.
        integer(c_int32_t), value :: flags
        integer(c_int) :: res
        res = rocblas_gemm_batched_ex(handle, transA, transB, m, n, k, alpha, a, a_type, lda, &
            b, b_type, ldb, beta, c, c_type, ldc, d, d_type, ldd, &
            batch_count, compute_type, algo, solution_index, flags)
    end function rocblas_gemm_batched_ex_fortran

    function rocblas_gemm_strided_batched_ex_fortran(handle, transA, transB, m, n, k, alpha, a, a_type, lda, stride_a, &
            b, b_type, ldb, stride_b, beta, c, c_type, ldc, stride_c, d, d_type, ldd, stride_d, &
            batch_count, compute_type, algo, solution_index, flags) &
            result(res) &
            bind(c, name = 'rocblas_gemm_strided_batched_ex_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_operation_none)), value :: transA
        integer(kind(rocblas_operation_none)), value :: transB
        integer(c_int), value :: m
        integer(c_int), value :: n
        integer(c_int), value :: k
        type(c_ptr), value :: alpha
        type(c_ptr), value :: a
        integer(kind(rocblas_datatype_f16_r)), value :: a_type
        integer(c_int), value :: lda
        integer(c_int64_t), value :: stride_a
        type(c_ptr), value :: b
        integer(kind(rocblas_datatype_f16_r)), value :: b_type
        integer(c_int), value :: ldb
        integer(c_int64_t), value :: stride_b
        type(c_ptr), value :: beta
        type(c_ptr), value :: c
        integer(kind(rocblas_datatype_f16_r)), value :: c_type
        integer(c_int), value :: ldc
        integer(c_int64_t), value :: stride_c
        type(c_ptr), value :: d
        integer(kind(rocblas_datatype_f16_r)), value :: d_type
        integer(c_int), value :: ldd
        integer(c_int64_t), value :: stride_d
        integer(c_int), value :: batch_count
        integer(kind(rocblas_datatype_f16_r)), value :: compute_type
        integer(kind(rocblas_gemm_algo_standard)), value :: algo
        integer(c_int32_t), value :: solution_index
        ! No unsigned types in fortran. If larger values are needed
        ! we will need a workaround.
        integer(c_int32_t), value :: flags
        integer(c_int) :: res
        res = rocblas_gemm_strided_batched_ex(handle, transA, transB, m, n, k, alpha, a, a_type, lda, stride_a, &
            b, b_type, ldb, stride_b, beta, c, c_type, ldc, stride_c, d, d_type, ldd, stride_d, &
            batch_count, compute_type, algo, solution_index, flags)
    end function rocblas_gemm_strided_batched_ex_fortran

    function rocblas_gemm_ext2_fortran(handle, m, n, k, alpha, a, a_type, row_stride_a, col_stride_a, &
         b, b_type, row_stride_b, col_stride_b, beta, c, c_type, row_stride_c, col_stride_c, &
         d, d_type, row_stride_d, col_stride_d, compute_type, algo, solution_index, flags) &
            result(res) &
            bind(c, name = 'rocblas_gemm_ext2_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(c_int), value :: m
        integer(c_int), value :: n
        integer(c_int), value :: k
        type(c_ptr), value :: alpha
        type(c_ptr), value :: a
        integer(kind(rocblas_datatype_f16_r)), value :: a_type
        integer(c_int64_t), value :: row_stride_a, col_stride_a
        type(c_ptr), value :: b
        integer(kind(rocblas_datatype_f16_r)), value :: b_type
        integer(c_int64_t), value :: row_stride_b, col_stride_b
        type(c_ptr), value :: beta
        type(c_ptr), value :: c
        integer(kind(rocblas_datatype_f16_r)), value :: c_type
        integer(c_int64_t), value :: row_stride_c, col_stride_c
        type(c_ptr), value :: d
        integer(kind(rocblas_datatype_f16_r)), value :: d_type
        integer(c_int64_t), value :: row_stride_d, col_stride_d
        integer(kind(rocblas_datatype_f16_r)), value :: compute_type
        integer(kind(rocblas_gemm_algo_standard)), value :: algo
        integer(c_int32_t), value :: solution_index
        ! No unsigned types in fortran. If larger values are needed
        ! we will need a workaround.
        integer(c_int32_t), value :: flags
        integer(c_int) :: res
        res = rocblas_gemm_ext2(handle, m, n, k, alpha, a, a_type, row_stride_a, col_stride_a, &
             b, b_type, row_stride_b, col_stride_b, beta, c, c_type, row_stride_c, col_stride_c, &
             d, d_type, row_stride_d, col_stride_d, compute_type, algo, solution_index, flags)
    end function rocblas_gemm_ext2_fortran

    ! trsm_ex
    function rocblas_trsm_ex_fortran(handle, side, uplo, transA, diag, m, n, alpha, A, lda, &
            B, ldb, invA, invA_size, compute_type) &
            result(res) &
            bind(c, name = 'rocblas_trsm_ex_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_side_left)), value :: side
        integer(kind(rocblas_fill_upper)), value :: uplo
        integer(kind(rocblas_operation_none)), value :: transA
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: m
        integer(c_int), value :: n
        type(c_ptr), value :: alpha
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        type(c_ptr), value :: B
        integer(c_int), value :: ldb
        type(c_ptr), value :: invA
        integer(c_int), value :: invA_size
        integer(kind(rocblas_datatype_f16_r)), value :: compute_type
        integer(c_int) :: res
        res = rocblas_trsm_ex(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, B, ldb, invA, invA_size, compute_type)
    end function rocblas_trsm_ex_fortran

    function rocblas_trsm_batched_ex_fortran(handle, side, uplo, transA, diag, m, n, alpha, A, lda, &
            B, ldb, batch_count, invA, invA_size, compute_type) &
            result(res) &
            bind(c, name = 'rocblas_trsm_batched_ex_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_side_left)), value :: side
        integer(kind(rocblas_fill_upper)), value :: uplo
        integer(kind(rocblas_operation_none)), value :: transA
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: m
        integer(c_int), value :: n
        type(c_ptr), value :: alpha
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        type(c_ptr), value :: B
        integer(c_int), value :: ldb
        integer(c_int), value :: batch_count
        type(c_ptr), value :: invA
        integer(c_int), value :: invA_size
        integer(kind(rocblas_datatype_f16_r)), value :: compute_type
        integer(c_int) :: res
        res = rocblas_trsm_batched_ex(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, B, ldb, batch_count, invA, invA_size, compute_type)
    end function rocblas_trsm_batched_ex_fortran

    function rocblas_trsm_strided_batched_ex_fortran(handle, side, uplo, transA, diag, m, n, alpha, A, lda, stride_A, &
            B, ldb, stride_B, batch_count, invA, invA_size, stride_invA, compute_type) &
            result(res) &
            bind(c, name = 'rocblas_trsm_strided_batched_ex_fortran')
        use iso_c_binding
        use rocblas_enums
        implicit none
        type(c_ptr), value :: handle
        integer(kind(rocblas_side_left)), value :: side
        integer(kind(rocblas_fill_upper)), value :: uplo
        integer(kind(rocblas_operation_none)), value :: transA
        integer(kind(rocblas_diagonal_unit)), value :: diag
        integer(c_int), value :: m
        integer(c_int), value :: n
        type(c_ptr), value :: alpha
        type(c_ptr), value :: A
        integer(c_int), value :: lda
        integer(c_int64_t), value :: stride_A
        type(c_ptr), value :: B
        integer(c_int), value :: ldb
        integer(c_int64_t), value :: stride_B
        integer(c_int), value :: batch_count
        type(c_ptr), value :: invA
        integer(c_int), value :: invA_size
        integer(c_int64_t), value :: stride_invA
        integer(kind(rocblas_datatype_f16_r)), value :: compute_type
        integer(c_int) :: res
        res = rocblas_trsm_strided_batched_ex(handle, side, uplo, transA, diag, m, n, alpha, &
            A, lda, stride_A, B, ldb, stride_B, batch_count, invA, invA_size, stride_invA, compute_type)
    end function rocblas_trsm_strided_batched_ex_fortran

end module rocblas_interface_tensile
