; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1771 () Bool)

(assert start!1771)

(declare-fun res!7607 () Bool)

(declare-fun e!5266 () Bool)

(assert (=> start!1771 (=> (not res!7607) (not e!5266))))

(declare-fun jz!32 () (_ BitVec 32))

(declare-fun e!15 () (_ BitVec 32))

(assert (=> start!1771 (= res!7607 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1771 e!5266))

(assert (=> start!1771 true))

(declare-datatypes ((array!730 0))(
  ( (array!731 (arr!322 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!322 (_ BitVec 32))) )
))
(declare-fun xx!44 () array!730)

(declare-fun array_inv!272 (array!730) Bool)

(assert (=> start!1771 (array_inv!272 xx!44)))

(declare-fun f!58 () array!730)

(assert (=> start!1771 (array_inv!272 f!58)))

(declare-fun b!9226 () Bool)

(declare-fun e!5264 () Bool)

(assert (=> b!9226 (= e!5266 e!5264)))

(declare-fun res!7604 () Bool)

(assert (=> b!9226 (=> (not res!7604) (not e!5264))))

(declare-fun i!179 () (_ BitVec 32))

(declare-fun lt!4674 () (_ BitVec 32))

(declare-fun lt!4673 () (_ BitVec 32))

(assert (=> b!9226 (= res!7604 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4673 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4673) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (bvsle i!179 (bvadd lt!4674 jz!32 #b00000000000000000000000000000001))))))

(assert (=> b!9226 (= lt!4673 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (=> b!9226 (= lt!4674 (bvsub (size!322 xx!44) #b00000000000000000000000000000001))))

(declare-fun b!9225 () Bool)

(declare-fun res!7605 () Bool)

(assert (=> b!9225 (=> (not res!7605) (not e!5266))))

(declare-fun xxInv!0 (array!730) Bool)

(assert (=> b!9225 (= res!7605 (xxInv!0 xx!44))))

(declare-fun b!9227 () Bool)

(declare-fun res!7606 () Bool)

(assert (=> b!9227 (=> (not res!7606) (not e!5264))))

(declare-fun fInv!0 (array!730) Bool)

(assert (=> b!9227 (= res!7606 (fInv!0 f!58))))

(declare-fun b!9228 () Bool)

(assert (=> b!9228 (= e!5264 (and (bvsle i!179 (bvadd lt!4674 jz!32)) (let ((i!181 (bvadd i!179 #b00000000000000000000000000000001))) (and (bvsgt i!181 (bvadd lt!4674 jz!32)) (bvsle #b00000000000000000000000000000000 i!181) (let ((lhs!64 (bvadd lt!4674 jz!32))) (and (= (bvand lhs!64 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand lhs!64 #b10000000000000000000000000000000) (bvand (bvadd lhs!64 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))))))

(assert (= (and start!1771 res!7607) b!9225))

(assert (= (and b!9225 res!7605) b!9226))

(assert (= (and b!9226 res!7604) b!9227))

(assert (= (and b!9227 res!7606) b!9228))

(declare-fun m!13583 () Bool)

(assert (=> start!1771 m!13583))

(declare-fun m!13585 () Bool)

(assert (=> start!1771 m!13585))

(declare-fun m!13587 () Bool)

(assert (=> b!9225 m!13587))

(declare-fun m!13589 () Bool)

(assert (=> b!9227 m!13589))

(check-sat (not b!9227) (not start!1771) (not b!9225))
(check-sat)
