; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2135 () Bool)

(assert start!2135)

(declare-fun res!8364 () Bool)

(declare-fun e!6096 () Bool)

(assert (=> start!2135 (=> (not res!8364) (not e!6096))))

(declare-datatypes ((array!796 0))(
  ( (array!797 (arr!350 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!350 (_ BitVec 32))) )
))
(declare-fun fq!120 () array!796)

(assert (=> start!2135 (= res!8364 (= (size!350 fq!120) #b00000000000000000000000000010100))))

(assert (=> start!2135 e!6096))

(declare-fun array_inv!299 (array!796) Bool)

(assert (=> start!2135 (array_inv!299 fq!120)))

(assert (=> start!2135 true))

(declare-fun b!10487 () Bool)

(declare-fun res!8365 () Bool)

(assert (=> b!10487 (=> (not res!8365) (not e!6096))))

(declare-fun fqInv!0 (array!796) Bool)

(assert (=> b!10487 (= res!8365 (fqInv!0 fq!120))))

(declare-fun b!10488 () Bool)

(declare-fun i!347 () (_ BitVec 32))

(declare-fun s!25 () (_ FloatingPoint 11 53))

(declare-fun jz!77 () (_ BitVec 32))

(assert (=> b!10488 (= e!6096 (and (bvsle #b00000000000000000000000000000000 jz!77) (bvslt jz!77 #b00000000000000000000000000010100) (bvsle #b11111111111111111111111111111111 i!347) (bvsle i!347 (bvsub jz!77 #b00000000000000000000000000000001)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) s!25) (let ((ix!260 (bvadd i!347 #b00000000000000000000000000000001))) (or (bvslt ix!260 #b00000000000000000000000000000000) (bvsge ix!260 #b00000000000000000000000000010100)))))))

(assert (= (and start!2135 res!8364) b!10487))

(assert (= (and b!10487 res!8365) b!10488))

(declare-fun m!15019 () Bool)

(assert (=> start!2135 m!15019))

(declare-fun m!15021 () Bool)

(assert (=> b!10487 m!15021))

(check-sat (not b!10487) (not start!2135))
(check-sat)
