; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1875 () Bool)

(assert start!1875)

(declare-fun i!179 () (_ BitVec 32))

(declare-fun lt!4811 () (_ BitVec 32))

(declare-fun b!10183 () Bool)

(declare-fun jz!32 () (_ BitVec 32))

(declare-fun e!5367 () Bool)

(declare-fun lt!4809 () (_ BitVec 32))

(assert (=> b!10183 (= e!5367 (and (bvsle i!179 (bvadd lt!4811 jz!32)) (bvsge (bvadd (bvsub lt!4809 lt!4811) i!179) #b00000000000000000000000000000000) (let ((lhs!52 (bvsub lt!4809 lt!4811))) (and (= (bvand lhs!52 #b10000000000000000000000000000000) (bvand i!179 #b10000000000000000000000000000000)) (not (= (bvand lhs!52 #b10000000000000000000000000000000) (bvand (bvadd lhs!52 i!179) #b10000000000000000000000000000000)))))))))

(declare-fun b!10182 () Bool)

(declare-fun res!8446 () Bool)

(assert (=> b!10182 (=> (not res!8446) (not e!5367))))

(declare-datatypes ((array!716 0))(
  ( (array!717 (arr!310 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!310 (_ BitVec 32))) )
))
(declare-fun f!58 () array!716)

(declare-fun fInv!0 (array!716) Bool)

(assert (=> b!10182 (= res!8446 (fInv!0 f!58))))

(declare-fun b!10180 () Bool)

(declare-fun res!8448 () Bool)

(declare-fun e!5366 () Bool)

(assert (=> b!10180 (=> (not res!8448) (not e!5366))))

(declare-fun xx!44 () array!716)

(declare-fun xxInv!0 (array!716) Bool)

(assert (=> b!10180 (= res!8448 (xxInv!0 xx!44))))

(declare-fun b!10181 () Bool)

(assert (=> b!10181 (= e!5366 e!5367)))

(declare-fun res!8447 () Bool)

(assert (=> b!10181 (=> (not res!8447) (not e!5367))))

(declare-fun e!15 () (_ BitVec 32))

(assert (=> b!10181 (= res!8447 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd lt!4809 #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (bvsle i!179 (bvadd lt!4811 jz!32 #b00000000000000000000000000000001))))))

(declare-fun lt!4810 () (_ BitVec 32))

(assert (=> b!10181 (= lt!4809 (ite (bvslt lt!4810 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4810))))

(assert (=> b!10181 (= lt!4810 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (=> b!10181 (= lt!4811 (bvsub (size!310 xx!44) #b00000000000000000000000000000001))))

(declare-fun res!8445 () Bool)

(assert (=> start!1875 (=> (not res!8445) (not e!5366))))

(assert (=> start!1875 (= res!8445 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1875 e!5366))

(assert (=> start!1875 true))

(declare-fun array_inv!260 (array!716) Bool)

(assert (=> start!1875 (array_inv!260 xx!44)))

(assert (=> start!1875 (array_inv!260 f!58)))

(assert (= (and start!1875 res!8445) b!10180))

(assert (= (and b!10180 res!8448) b!10181))

(assert (= (and b!10181 res!8447) b!10182))

(assert (= (and b!10182 res!8446) b!10183))

(declare-fun m!18039 () Bool)

(assert (=> b!10182 m!18039))

(declare-fun m!18041 () Bool)

(assert (=> b!10180 m!18041))

(declare-fun m!18043 () Bool)

(assert (=> start!1875 m!18043))

(declare-fun m!18045 () Bool)

(assert (=> start!1875 m!18045))

(push 1)

(assert (not start!1875))

(assert (not b!10180))

(assert (not b!10182))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

