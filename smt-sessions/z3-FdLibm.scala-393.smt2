; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2165 () Bool)

(assert start!2165)

(declare-fun res!8702 () Bool)

(declare-fun e!6170 () Bool)

(assert (=> start!2165 (=> (not res!8702) (not e!6170))))

(declare-datatypes ((array!799 0))(
  ( (array!800 (arr!350 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!350 (_ BitVec 32))) )
))
(declare-fun fq!120 () array!799)

(assert (=> start!2165 (= res!8702 (= (size!350 fq!120) #b00000000000000000000000000010100))))

(assert (=> start!2165 e!6170))

(declare-fun array_inv!299 (array!799) Bool)

(assert (=> start!2165 (array_inv!299 fq!120)))

(assert (=> start!2165 true))

(declare-fun b!10861 () Bool)

(declare-fun res!8703 () Bool)

(assert (=> b!10861 (=> (not res!8703) (not e!6170))))

(declare-fun fqInv!0 (array!799) Bool)

(assert (=> b!10861 (= res!8703 (fqInv!0 fq!120))))

(declare-fun i!347 () (_ BitVec 32))

(declare-fun s!25 () (_ FloatingPoint 11 53))

(declare-fun jz!77 () (_ BitVec 32))

(declare-fun b!10862 () Bool)

(assert (=> b!10862 (= e!6170 (and (bvsle #b00000000000000000000000000000000 jz!77) (bvslt jz!77 #b00000000000000000000000000010100) (bvsle #b11111111111111111111111111111111 i!347) (bvsle i!347 (bvsub jz!77 #b00000000000000000000000000000001)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) s!25) (let ((ix!260 (bvadd i!347 #b00000000000000000000000000000001))) (or (bvslt ix!260 #b00000000000000000000000000000000) (bvsge ix!260 #b00000000000000000000000000010100)))))))

(assert (= (and start!2165 res!8702) b!10861))

(assert (= (and b!10861 res!8703) b!10862))

(declare-fun m!16845 () Bool)

(assert (=> start!2165 m!16845))

(declare-fun m!16847 () Bool)

(assert (=> b!10861 m!16847))

(check-sat (not start!2165) (not b!10861))
(check-sat)
