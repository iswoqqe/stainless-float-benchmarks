; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3145 () Bool)

(assert start!3145)

(declare-fun b_free!53 () Bool)

(declare-fun b_next!53 () Bool)

(assert (=> start!3145 (= b_free!53 (not b_next!53))))

(declare-fun tp!80 () Bool)

(declare-fun b_and!465 () Bool)

(assert (=> start!3145 (= tp!80 b_and!465)))

(declare-fun b!17857 () Bool)

(declare-fun e!9460 () Bool)

(declare-datatypes ((array!1406 0))(
  ( (array!1407 (arr!615 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!615 (_ BitVec 32))) )
))
(declare-fun a!12 () array!1406)

(assert (=> b!17857 (= e!9460 (bvsge #b00000000000000000000000000000100 (size!615 a!12)))))

(declare-fun b!17858 () Bool)

(declare-fun res!14286 () Bool)

(assert (=> b!17858 (=> (not res!14286) (not e!9460))))

(declare-fun P!5 () Int)

(declare-fun dynLambda!69 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!17858 (= res!14286 (dynLambda!69 P!5 (select (arr!615 a!12) #b00000000000000000000000000000010)))))

(declare-fun res!14285 () Bool)

(assert (=> start!3145 (=> (not res!14285) (not e!9460))))

(assert (=> start!3145 (= res!14285 (= (size!615 a!12) #b00000000000000000000000000010100))))

(assert (=> start!3145 e!9460))

(declare-fun array_inv!563 (array!1406) Bool)

(assert (=> start!3145 (array_inv!563 a!12)))

(assert (=> start!3145 tp!80))

(declare-fun b!17859 () Bool)

(declare-fun res!14288 () Bool)

(assert (=> b!17859 (=> (not res!14288) (not e!9460))))

(assert (=> b!17859 (= res!14288 (dynLambda!69 P!5 (select (arr!615 a!12) #b00000000000000000000000000000001)))))

(declare-fun b!17860 () Bool)

(declare-fun res!14289 () Bool)

(assert (=> b!17860 (=> (not res!14289) (not e!9460))))

(assert (=> b!17860 (= res!14289 (dynLambda!69 P!5 (select (arr!615 a!12) #b00000000000000000000000000000000)))))

(declare-fun b!17861 () Bool)

(declare-fun res!14287 () Bool)

(assert (=> b!17861 (=> (not res!14287) (not e!9460))))

(assert (=> b!17861 (= res!14287 (dynLambda!69 P!5 (select (arr!615 a!12) #b00000000000000000000000000000011)))))

(assert (= (and start!3145 res!14285) b!17860))

(assert (= (and b!17860 res!14289) b!17859))

(assert (= (and b!17859 res!14288) b!17858))

(assert (= (and b!17858 res!14286) b!17861))

(assert (= (and b!17861 res!14287) b!17857))

(declare-fun b_lambda!8353 () Bool)

(assert (=> (not b_lambda!8353) (not b!17858)))

(declare-fun t!603 () Bool)

(declare-fun tb!413 () Bool)

(assert (=> (and start!3145 (= P!5 P!5) t!603) tb!413))

(declare-fun result!413 () Bool)

(assert (=> tb!413 (= result!413 true)))

(assert (=> b!17858 t!603))

(declare-fun b_and!467 () Bool)

(assert (= b_and!465 (and (=> t!603 result!413) b_and!467)))

(declare-fun b_lambda!8355 () Bool)

(assert (=> (not b_lambda!8355) (not b!17859)))

(declare-fun t!605 () Bool)

(declare-fun tb!415 () Bool)

(assert (=> (and start!3145 (= P!5 P!5) t!605) tb!415))

(declare-fun result!415 () Bool)

(assert (=> tb!415 (= result!415 true)))

(assert (=> b!17859 t!605))

(declare-fun b_and!469 () Bool)

(assert (= b_and!467 (and (=> t!605 result!415) b_and!469)))

(declare-fun b_lambda!8357 () Bool)

(assert (=> (not b_lambda!8357) (not b!17860)))

(declare-fun t!607 () Bool)

(declare-fun tb!417 () Bool)

(assert (=> (and start!3145 (= P!5 P!5) t!607) tb!417))

(declare-fun result!417 () Bool)

(assert (=> tb!417 (= result!417 true)))

(assert (=> b!17860 t!607))

(declare-fun b_and!471 () Bool)

(assert (= b_and!469 (and (=> t!607 result!417) b_and!471)))

(declare-fun b_lambda!8359 () Bool)

(assert (=> (not b_lambda!8359) (not b!17861)))

(declare-fun t!609 () Bool)

(declare-fun tb!419 () Bool)

(assert (=> (and start!3145 (= P!5 P!5) t!609) tb!419))

(declare-fun result!419 () Bool)

(assert (=> tb!419 (= result!419 true)))

(assert (=> b!17861 t!609))

(declare-fun b_and!473 () Bool)

(assert (= b_and!471 (and (=> t!609 result!419) b_and!473)))

(declare-fun m!28207 () Bool)

(assert (=> b!17858 m!28207))

(assert (=> b!17858 m!28207))

(declare-fun m!28209 () Bool)

(assert (=> b!17858 m!28209))

(declare-fun m!28211 () Bool)

(assert (=> start!3145 m!28211))

(declare-fun m!28213 () Bool)

(assert (=> b!17859 m!28213))

(assert (=> b!17859 m!28213))

(declare-fun m!28215 () Bool)

(assert (=> b!17859 m!28215))

(declare-fun m!28217 () Bool)

(assert (=> b!17861 m!28217))

(assert (=> b!17861 m!28217))

(declare-fun m!28219 () Bool)

(assert (=> b!17861 m!28219))

(declare-fun m!28221 () Bool)

(assert (=> b!17860 m!28221))

(assert (=> b!17860 m!28221))

(declare-fun m!28223 () Bool)

(assert (=> b!17860 m!28223))

(push 1)

(assert (not b_lambda!8353))

(assert (not start!3145))

(assert (not b_lambda!8359))

(assert (not b_lambda!8357))

(assert (not b_next!53))

(assert (not b_lambda!8355))

(assert b_and!473)

(check-sat)

(pop 1)

(push 1)

(assert b_and!473)

(assert (not b_next!53))

(check-sat)

(pop 1)

