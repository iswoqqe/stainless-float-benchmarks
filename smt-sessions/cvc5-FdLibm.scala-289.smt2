; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1869 () Bool)

(assert start!1869)

(declare-fun b!10144 () Bool)

(declare-fun res!8410 () Bool)

(declare-fun e!5333 () Bool)

(assert (=> b!10144 (=> (not res!8410) (not e!5333))))

(declare-datatypes ((array!710 0))(
  ( (array!711 (arr!307 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!307 (_ BitVec 32))) )
))
(declare-fun xx!44 () array!710)

(declare-fun xxInv!0 (array!710) Bool)

(assert (=> b!10144 (= res!8410 (xxInv!0 xx!44))))

(declare-fun b!10146 () Bool)

(declare-fun res!8412 () Bool)

(declare-fun e!5332 () Bool)

(assert (=> b!10146 (=> (not res!8412) (not e!5332))))

(declare-fun f!58 () array!710)

(declare-fun fInv!0 (array!710) Bool)

(assert (=> b!10146 (= res!8412 (fInv!0 f!58))))

(declare-fun res!8409 () Bool)

(assert (=> start!1869 (=> (not res!8409) (not e!5333))))

(declare-fun jz!32 () (_ BitVec 32))

(declare-fun e!15 () (_ BitVec 32))

(assert (=> start!1869 (= res!8409 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1869 e!5333))

(assert (=> start!1869 true))

(declare-fun array_inv!257 (array!710) Bool)

(assert (=> start!1869 (array_inv!257 xx!44)))

(assert (=> start!1869 (array_inv!257 f!58)))

(declare-fun b!10147 () Bool)

(declare-fun i!179 () (_ BitVec 32))

(declare-fun lt!4782 () (_ BitVec 32))

(declare-fun lt!4783 () (_ BitVec 32))

(assert (=> b!10147 (= e!5332 (and (bvsle i!179 (bvadd lt!4783 jz!32)) (not (= (bvand lt!4782 #b10000000000000000000000000000000) (bvand lt!4783 #b10000000000000000000000000000000))) (not (= (bvand lt!4782 #b10000000000000000000000000000000) (bvand (bvsub lt!4782 lt!4783) #b10000000000000000000000000000000)))))))

(declare-fun b!10145 () Bool)

(assert (=> b!10145 (= e!5333 e!5332)))

(declare-fun res!8411 () Bool)

(assert (=> b!10145 (=> (not res!8411) (not e!5332))))

(assert (=> b!10145 (= res!8411 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd lt!4782 #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (bvsle i!179 (bvadd lt!4783 jz!32 #b00000000000000000000000000000001))))))

(declare-fun lt!4784 () (_ BitVec 32))

(assert (=> b!10145 (= lt!4782 (ite (bvslt lt!4784 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4784))))

(assert (=> b!10145 (= lt!4784 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (=> b!10145 (= lt!4783 (bvsub (size!307 xx!44) #b00000000000000000000000000000001))))

(assert (= (and start!1869 res!8409) b!10144))

(assert (= (and b!10144 res!8410) b!10145))

(assert (= (and b!10145 res!8411) b!10146))

(assert (= (and b!10146 res!8412) b!10147))

(declare-fun m!18015 () Bool)

(assert (=> b!10144 m!18015))

(declare-fun m!18017 () Bool)

(assert (=> b!10146 m!18017))

(declare-fun m!18019 () Bool)

(assert (=> start!1869 m!18019))

(declare-fun m!18021 () Bool)

(assert (=> start!1869 m!18021))

(push 1)

(assert (not b!10144))

(assert (not start!1869))

(assert (not b!10146))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

