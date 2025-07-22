; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2133 () Bool)

(assert start!2133)

(declare-fun res!8358 () Bool)

(declare-fun e!6090 () Bool)

(assert (=> start!2133 (=> (not res!8358) (not e!6090))))

(declare-datatypes ((array!794 0))(
  ( (array!795 (arr!349 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!349 (_ BitVec 32))) )
))
(declare-fun fq!120 () array!794)

(assert (=> start!2133 (= res!8358 (= (size!349 fq!120) #b00000000000000000000000000010100))))

(assert (=> start!2133 e!6090))

(declare-fun array_inv!298 (array!794) Bool)

(assert (=> start!2133 (array_inv!298 fq!120)))

(assert (=> start!2133 true))

(declare-fun b!10481 () Bool)

(declare-fun res!8359 () Bool)

(assert (=> b!10481 (=> (not res!8359) (not e!6090))))

(declare-fun fqInv!0 (array!794) Bool)

(assert (=> b!10481 (= res!8359 (fqInv!0 fq!120))))

(declare-fun i!347 () (_ BitVec 32))

(declare-fun s!25 () (_ FloatingPoint 11 53))

(declare-fun jz!77 () (_ BitVec 32))

(declare-fun b!10482 () Bool)

(assert (=> b!10482 (= e!6090 (and (bvsle #b00000000000000000000000000000000 jz!77) (bvslt jz!77 #b00000000000000000000000000010100) (bvsle #b11111111111111111111111111111111 i!347) (bvsle i!347 (bvsub jz!77 #b00000000000000000000000000000001)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) s!25) (= (bvand i!347 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!347 #b10000000000000000000000000000000) (bvand (bvadd i!347 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (= (and start!2133 res!8358) b!10481))

(assert (= (and b!10481 res!8359) b!10482))

(declare-fun m!15015 () Bool)

(assert (=> start!2133 m!15015))

(declare-fun m!15017 () Bool)

(assert (=> b!10481 m!15017))

(check-sat (not start!2133) (not b!10481))
(check-sat)
