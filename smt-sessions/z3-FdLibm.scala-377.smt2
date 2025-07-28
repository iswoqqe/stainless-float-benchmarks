; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2085 () Bool)

(assert start!2085)

(declare-fun res!8543 () Bool)

(declare-fun e!6023 () Bool)

(assert (=> start!2085 (=> (not res!8543) (not e!6023))))

(declare-datatypes ((array!758 0))(
  ( (array!759 (arr!334 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!334 (_ BitVec 32))) )
))
(declare-fun fq!115 () array!758)

(assert (=> start!2085 (= res!8543 (= (size!334 fq!115) #b00000000000000000000000000010100))))

(assert (=> start!2085 e!6023))

(declare-fun array_inv!283 (array!758) Bool)

(assert (=> start!2085 (array_inv!283 fq!115)))

(assert (=> start!2085 true))

(declare-fun b!10632 () Bool)

(declare-fun res!8544 () Bool)

(assert (=> b!10632 (=> (not res!8544) (not e!6023))))

(declare-fun fqInv!0 (array!758) Bool)

(assert (=> b!10632 (= res!8544 (fqInv!0 fq!115))))

(declare-fun b!10633 () Bool)

(declare-fun jz!74 () (_ BitVec 32))

(assert (=> b!10633 (= e!6023 (and (bvsle #b00000000000000000000000000000000 jz!74) (bvslt jz!74 #b00000000000000000000000000010100) (let ((i!338 (bvsub jz!74 #b00000000000000000000000000000001))) (and (bvsge i!338 #b00000000000000000000000000000000) (bvslt i!338 #b00000000000000000000000000000000)))))))

(assert (= (and start!2085 res!8543) b!10632))

(assert (= (and b!10632 res!8544) b!10633))

(declare-fun m!16339 () Bool)

(assert (=> start!2085 m!16339))

(declare-fun m!16341 () Bool)

(assert (=> b!10632 m!16341))

(check-sat (not b!10632) (not start!2085))
(check-sat)
