; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2087 () Bool)

(assert start!2087)

(declare-fun res!8549 () Bool)

(declare-fun e!6029 () Bool)

(assert (=> start!2087 (=> (not res!8549) (not e!6029))))

(declare-datatypes ((array!760 0))(
  ( (array!761 (arr!335 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!335 (_ BitVec 32))) )
))
(declare-fun fq!115 () array!760)

(assert (=> start!2087 (= res!8549 (= (size!335 fq!115) #b00000000000000000000000000010100))))

(assert (=> start!2087 e!6029))

(declare-fun array_inv!284 (array!760) Bool)

(assert (=> start!2087 (array_inv!284 fq!115)))

(assert (=> start!2087 true))

(declare-fun b!10638 () Bool)

(declare-fun res!8550 () Bool)

(assert (=> b!10638 (=> (not res!8550) (not e!6029))))

(declare-fun fqInv!0 (array!760) Bool)

(assert (=> b!10638 (= res!8550 (fqInv!0 fq!115))))

(declare-fun b!10639 () Bool)

(declare-fun jz!74 () (_ BitVec 32))

(assert (=> b!10639 (= e!6029 (and (bvsle #b00000000000000000000000000000000 jz!74) (bvslt jz!74 #b00000000000000000000000000010100) (not (= (bvand jz!74 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!74 #b10000000000000000000000000000000) (bvand (bvsub jz!74 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (= (and start!2087 res!8549) b!10638))

(assert (= (and b!10638 res!8550) b!10639))

(declare-fun m!16343 () Bool)

(assert (=> start!2087 m!16343))

(declare-fun m!16345 () Bool)

(assert (=> b!10638 m!16345))

(check-sat (not start!2087) (not b!10638))
(check-sat)
