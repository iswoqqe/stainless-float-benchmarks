; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2131 () Bool)

(assert start!2131)

(declare-fun res!8352 () Bool)

(declare-fun e!6084 () Bool)

(assert (=> start!2131 (=> (not res!8352) (not e!6084))))

(declare-datatypes ((array!792 0))(
  ( (array!793 (arr!348 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!348 (_ BitVec 32))) )
))
(declare-fun fq!120 () array!792)

(assert (=> start!2131 (= res!8352 (= (size!348 fq!120) #b00000000000000000000000000010100))))

(assert (=> start!2131 e!6084))

(declare-fun array_inv!297 (array!792) Bool)

(assert (=> start!2131 (array_inv!297 fq!120)))

(assert (=> start!2131 true))

(declare-fun b!10475 () Bool)

(declare-fun res!8353 () Bool)

(assert (=> b!10475 (=> (not res!8353) (not e!6084))))

(declare-fun fqInv!0 (array!792) Bool)

(assert (=> b!10475 (= res!8353 (fqInv!0 fq!120))))

(declare-fun b!10476 () Bool)

(declare-fun jz!77 () (_ BitVec 32))

(declare-fun i!347 () (_ BitVec 32))

(assert (=> b!10476 (= e!6084 (and (bvsle #b00000000000000000000000000000000 jz!77) (bvslt jz!77 #b00000000000000000000000000010100) (bvsle #b11111111111111111111111111111111 i!347) (not (= (bvand jz!77 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!77 #b10000000000000000000000000000000) (bvand (bvsub jz!77 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (= (and start!2131 res!8352) b!10475))

(assert (= (and b!10475 res!8353) b!10476))

(declare-fun m!15011 () Bool)

(assert (=> start!2131 m!15011))

(declare-fun m!15013 () Bool)

(assert (=> b!10475 m!15013))

(check-sat (not start!2131) (not b!10475))
(check-sat)
